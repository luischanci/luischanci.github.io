*! version 1.0.0 Mar2019 ; lchanci1@binghamton.edu
qui{
cap pro drop mypoiss
pro def mypoiss, eclass
version 14.2
syntax varlist (min=2) [if] [in]
	local depvar: word 1 of `varlist'
	local regs  : list varlist - depvar
	marksample    touse
	markout       `touse'
	tempname       b V
	
	mata:   m_pois("`depvar'", "`regs'", "`touse'")
	mat     `b' = r(beta)
	mat     `V' = r(V)
	local   vnames _cons `regs'
	matname `V' `vnames'
	matname `b' `vnames', c(.)
	ereturn post `b' `V', depname(`depvar') esample(`touse')
	ereturn display
end

version 14.2
mata:
mata clear
void m_pois(string scalar yname,
			string scalar inexognames,
			string scalar touse)
{
	real vector Y, b
	real matrix X, V
	real scalar np
	
	st_view(Y,., tokens(yname), touse)
	st_view(X,., tokens(inexognames), touse)
	np = (cols(X) + 1)
	
S =	optimize_init()
	optimize_init_evaluator(S, &lnf())
	optimize_init_argument(S,1,Y)
	optimize_init_argument(S,2,X)
	optimize_init_params(S, J(1,np,1))
b = optimize(S)
V = optimize_result_V(S)
	st_matrix("r(beta)", b)
	st_matrix("r(V)", V)
}
	
void lnf(todo, b, Y, X, cri, g, H)
{
    Xb = (J(rows(X), 1, 1), X)*b'
	mu = exp(Xb)
    cri= sum(-mu + Y:*Xb - lnfactorial(Y))
}
end
}
******************************************
