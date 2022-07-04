cap program drop edge
program edge, sortpreserve byable(onecall)
	syntax varlist(min=4 max=4 numeric), GENerate(name max=1)

	cap drop `generate'
	qui gen `generate' = .
	cap drop touse
	qui gen touse = 0
	if _by() {
		cap drop bygroup
		egen bygroup = group(`_byvars')
	    qui levelsof bygroup
		foreach lev in `r(levels)' {
			qui replace touse = 0
			qui replace touse = 1 if bygroup == `lev'
			mata: edgesubr("`varlist'", "touse", "`generate'")
		}
		qui drop bygroup
	}
	else {
	    qui replace touse = 1
	    mata: edgesubr("`varlist'", "touse", "`generate'")
	}
	qui drop touse
	label var `generate' "EDGE: effective bid-ask spread"
end

capture mata mata drop edgesubr()
mata:
void edgesubr(`SS' varlist, `SS' touse ,`SS' generate)
{	
	real matrix data, S
	real colvector o, l, h, c, m, l1, h1, c1, m1, x1, x2
	real scalar T, T1, e1, e2, v1, v2, w1, w2, k, n1, n2, n3, n4, n5, s2
	
	data = o = l = h = c = .
	st_view(data, ., tokens(varlist), touse)
	st_subview(o, data, ., 1)
	st_subview(h, data, ., 2)
	st_subview(l, data, ., 3)
	st_subview(c, data, ., 4)
	
	o = log(o)
	l = log(l)
	h = log(h)
	c = log(c)
	T = rows(c)
	T1 = T - 1
	m = (h + l) / 2
	
	// o1 = o[1..T1,] // seems redundant
	l1 = l[1..T1,]
	h1 = h[1..T1,]
	c1 = c[1..T1,]
	m1 = m[1..T1,]
	o = o[2..T,]
	l = l[2..T,]
	h = h[2..T,]
	c = c[2..T,]
	m = m[2..T,]
	
	x1 = (m-o):*(o-m1)+(m-c1):*(c1-m1)
	x2 = (m-o):*(o-c1)+(o-c1):*(c1-m1)
	
	e1 = mean(x1)
	e2 = mean(x2)
	v1 = variance(x1)
	v2 = variance(x2)
	w1 = v2/(v1+v2)
	w2 = v1/(v1+v2)
	k = 4*w1*w2
	
	n1 = mean(o:==h)
	n2 = mean(o:==l)
	n3 = mean(c1:==h1)
	n4 = mean(c1:==l1)
	n5 = mean(h:==l :& l:==c1)
	
	s2 = -4*(w1*e1+w2*e2)/((1-k*(n1+n2)/2)+(1-n5)*(1-k*(n3+n4)/2))
	S = (. \ J(T1, 1, sqrt(max((0, s2)))))
	st_store(., generate, touse, S)
}
end
