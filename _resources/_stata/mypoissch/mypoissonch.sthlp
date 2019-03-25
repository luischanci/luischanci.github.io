{smcl}
{* 05 March 2019}{...}
{hline}
help for {hi:mypoiss}
{hline}
{viewerjumpto "Syntax" "mypoiss##syntax"}{...}
{viewerjumpto "Options" "mypoiss##options"}{...}
{viewerjumpto "Description" "mypoiss##description"}{...}
{viewerjumpto "Stored results" "mypoiss##results"}{...}
{viewerjumpto "Examples" "mypoiss##examples"}{...}
{viewerjumpto "References" "mypoiss##references"}{...}
{viewerjumpto "Author" "mypoiss##author"}{...}
{title:Title}

{p2colset 5 20 22 2}{...}
{p2col :{cdm:mypoiss} {hline 2}}My Poisson Regression{p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:Syntax

{p 8 16 2}
{cmd:mypoiss} {depvar} [{indepvars}] {ifin} [{it:weight}]
[{cmd:,} {cmdab:nonc:onstant}  {cmdab:r:obust}
  {cmdab:exo:gen(}{varlist}{cmd:)}]


{marker options}{...}
{title:Options}

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Model}
{synopt :{opt nocon:stant}}suppress constant term{p_end}

{syntab:SE/Robust}
{synopt :{opth vce(vcetype)}}{it:vcetype} may be {opt ols},
   {opt r:obust}, {opt cl:uster} {it:clustvar}, {opt boot:strap},
   {opt jack:knife}, {opt hc2}, or {opt hc3}{p_end}


{marker description}{...}
{title:Description}

{p 4 4 2}{cmd:mypoiss} can fit two closely related models.
The first is the OLS estimator.

{p 4 12 2}Consider the model:

{p 4 12 2}y_it = {bind:x_it * b_1} + {bind:w_it * b_2} + u_it
{space 4} i=1,...,N; {space 3} t=1,...,T{p_end}
{p 4 12 2}u_it = v_i + e_it,{p_end}

{p 4 12 2}where

{p 4 12 2}v_i are unobserved individual-level effects;{p_end}

{p 4 12 2}e_it are the observation-specific errors;{p_end}

{p 4 12 2}x_it is a vector of strictly exogenous covariates (ones dependent on neither current nor past e_it);{p_end}

{p 4 12 2}b_1 and b_2 are vectors of parameters to be estimated;{p_end}

{title:Citation}

{p 4 8 2}{cmd:mypoiss} is not an official Stata command.
It is a free contribution to the research community.
Please cite it as such: {p_end}
{p 8 8 2}Chancí, L. 2019. Poisson Regression. My first ado file and sthlp file. {it: Journal X} 1(1): 1-2.{p_end}


{marker results}{...}
{title:Return values}

{col 4}Matrices

{col 8}{cmd:r(betas)}{col 27}Coefficient vector
{col 8}{cmd:e(V)}{col 27}Variance-covariance matrix


{marker examples}{...}
{title:Examples}

{p 4 8 2}{stata "use http://www.stata-press.com/data/r10/dollhill3.dta"}{p_end}
{p 4 8 2}{stata "xpoiss y1 x1"}{p_end}

{p 4 8 2}{stata "use http://www.stata-press.com/data/r10/dollhill3.dta"}{p_end}
{p 4 8 2}{stata "xpoiss y1 x1, r"}{p_end}


{marker references}{...}
{title:References}


{marker AP2009}{...}
{phang}
Angrist, J. D., and J.-S. Pischke. 2009.
{browse "http://www.stata.com/bookstore/mhe.html":{it:Mostly Harmless Econometrics: An Empiricist's Companion}.}
Princeton, NJ: Princeton University Press.

{marker DM1993}{...}
{phang}
Davidson, R., and J. G. MacKinnon. 1993.
{browse "http://www.stata.com/bookstore/eie.html":{it:Estimation and Inference in Econometrics}.}
New York: Oxford University Press.
{p_end}


{marker author}{...}
{title:Author}

{p 4}Luis Chancí ({browse "http://luischanci.github.io":website}){p_end}
{p 4}lchanci1@binghamton.edu{p_end}


{title:Also see}
{p 4 13 2}
Online: help for {help regress}, {help poisson}.
