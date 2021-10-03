
<!-- README.md is generated from README.Rmd. Please edit that file -->

<img src="man/figures/logo.png" align="right" width="160" />

# geostan

The **geostan** R package supports a complete spatial analysis workflow
with hierarchical Bayesian models (HBMs) for areal data and a variety of
functions for visualizing spatial data and model results.

### Spatial analysis tools

Tools for visualizing and measuring spatial autocorrelation and map
patterns, for exploratory analysis and model diagnostics.

### Disease mapping and spatial regression

Model small-area incidence rates with mortality or disease data recorded
across areal units like counties or census tracts.

### Observational uncertainty

Incorporate information on data reliability into any **geostan** model.
Built specifically for American Community Survey (ACS) data.

### The RStan ecosystem

Compatible with a suite of high-quality R packages for Bayesian
inference and model evaluation.

### Custom Stan models

Tools for building custom spatial models in
[Stan](https://mc-stan.org/).

## Installation

From **R** (&gt;= version 4.05), install **geostan** using:

``` r
if (!require(drat)) install.packages("drat")
drat::addRepo("connordonegan")
install.packages("geostan")
```

## Resources

For demonstration analyses and some additional discussion, see the
vignettes on the package
[website](https://connordonegan.github.io/geostan/) and the package help
pages (e.g., run `?stan_car` in R).

## Citation

If you use **geostan** in your work, please cite the package itself and
supporting methodology on spatial HBMs, as well as any other
foundational research as indicated by the documentation for each
function you use.

-   Donegan, Connor, Yongwan Chun, and Daniel A. Griffith. Modeling
    community health with areal data: Bayesian inference with survey
    standard errors and spatial structure. International Journal of
    Environmental Research and Public Health 18.13 (2021): 6856. DOI:
    10.3390/ijerph18136856

-   Donegan, Connor (2021). geostan: Bayesian Spatial Analysis. R
    package Version 0.1.0 <https://connordonegan.github.io/geostan>

Since **geostan** is an interface to **Stan**, also be sure to cite
**Stan**:

-   Carpenter B., Gelman A., Hoffman M. D., Lee D., Goodrich B.,
    Betancourt M., Brubaker M., Guo J., Li P., and Riddell A. (2017).
    Stan: A probabilistic programming language. Journal of Statistical
    Software. 76(1). DOI: 10.18637/jss.v076.i01

## Credit

The **geostan** package was built with the help of **rstantools**:

-   Gabry, Jonah, Ben Goodrich, and Martin Lysy (2021). rstantools:
    Tools for Developing R Packages Interfacing with ‘Stan’. R package
    version 2.1.1 <https://mc-stan.org/rstantools/index.html>
