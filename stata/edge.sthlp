{smcl}
{title:Efficient Estimation of Bid-Ask Spreads from Open, High, Low, and Close Prices}

{p 4 4 2}
Implements an efficient estimator of the effective bid-ask spread from Open, High, Low, and Close prices as proposed in  {browse "https://www.ssrn.com/abstract=3892335":Ardia, Guidotti, Kroencke (2021)}

{title:Syntax}

{p 4 4 2}
Estimate the spread and save it as a new variable in dataset

{p 8 8 2} {cmd:edge} {it:open high low close}, {opth gen:erate(newvar)}

{pstd}{it:open}: variable containing Open prices{p_end}
{pstd}{it:high}: variable containing High prices{p_end}
{pstd}{it:low}: variable containing Low prices{p_end}
{pstd}{it:close}: variable containing Close prices{p_end}

{p 4 4 2}
Prices must be sorted in ascending order of the timestamp.

{p 4 4 2}
{cmd:by} is allowed; see {help by}

{title:Website}

{p 4 4 2} 
You can find {cmd:edge} implementations in other programming languages at {browse "https://github.com/eguidotti/bidask"}

{title:References}

{p 4 4 2}
Ardia, David and Guidotti, Emanuele and Kroencke, Tim Alexander, "Efficient Estimation of Bid-Ask Spreads from Open, High, Low, and Close Prices". Available at SSRN: {browse "https://www.ssrn.com/abstract=3892335"}

{title:Author of STATA program}

{pstd}Polina Efremenko{p_end}
{pstd}{browse "mailto:polina.efremenko@unine.ch":polina.efremenko@unine.ch}{p_end}
{pstd}{browse "https://github.com/PolinaEfremenko"}{p_end}
 


