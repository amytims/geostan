// parameter models (priors)
  intercept ~ normal(alpha_prior[1], alpha_prior[2]);
  if (dx_all) append_row(gamma, beta) ~ normal(beta_prior[1], beta_prior[2]);
  if (has_sigma) sigma ~ student_t(sigma_prior[1], sigma_prior[2], sigma_prior[3]);
  if (is_student) nu[1] ~ gamma(t_nu_prior[1], t_nu_prior[2]);  
// data models (observational error)
  if (model_offset) {
    offset_obs ~ normal(offset_est, offset_me);
    offset_est ~ student_t(nu_offset[1], mu_offset[1], sigma_offset[1]);
    nu_offset[1] ~ gamma(2, 0.1);
  }
  if (dx_me_bounded) {
    to_vector(x_me_bounded) ~ normal(to_vector(x_true_bounded), to_vector(sigma_me_bounded));
    for (j in 1:dx_me_bounded) x_true_bounded[,j] ~ student_t(nu_x_true_bounded[j], mu_x_true_bounded[j], sigma_x_true_bounded[j]);
    nu_x_true_bounded ~ gamma(2, 0.1);
    }
  if (dx_me_unbounded) {
    to_vector(x_me_unbounded) ~ normal(to_vector(x_true_unbounded), to_vector(sigma_me_unbounded));
    for (j in 1:dx_me_unbounded) x_true_unbounded[,j] ~ student_t(nu_x_true_unbounded[j], mu_x_true_unbounded[j], sigma_x_true_unbounded[j]);
    nu_x_true_unbounded ~ gamma(2, 0.1);
  }
// partial pooling of observations across groups/geographies (exchangeable "random effects")
  if (has_re) {
    alpha_tau[has_re] ~ student_t(alpha_tau_prior[1], alpha_tau_prior[2], alpha_tau_prior[3]);
    alpha_re_tilde ~ std_normal();    
  }
// process model (likelihood of the data)
  if (!prior_only) {
    if (is_student) {	
      y ~ student_t(nu[1], f, sigma[has_sigma]);
      }   
    if (is_gaussian)  y ~ normal(f, sigma[has_sigma]);
    if (is_poisson) y_int ~ poisson_log(f);
    if (is_binomial) y_int ~ binomial(trials, f);
  }
  
