% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/edge.R
\name{edge}
\alias{edge}
\title{Efficient Estimation of Bid-Ask Spreads from OHLC Prices}
\usage{
edge(open, high, low, close, na.rm = FALSE)
}
\arguments{
\item{open}{numeric vector of open prices.}

\item{high}{numeric vector of high prices.}

\item{low}{numeric vector of low prices.}

\item{close}{numeric vector of close prices.}

\item{na.rm}{a \code{logical} value indicating whether \code{NA} values should be stripped before the computation proceeds. Default \code{FALSE}.}
}
\value{
The (percent) spread estimate.
}
\description{
This function implements an efficient estimator of the
effective bid-ask spread from open, high, low, and close prices as proposed 
in \href{https://www.ssrn.com/abstract=3892335}{Ardia, Guidotti, Kroencke (2021)}.
}
\details{
Prices must be sorted in ascending order of the timestamp.
}
\note{
\itemize{
\item Please cite \href{https://www.ssrn.com/abstract=3892335}{Ardia, Guidotti, Kroencke (2021)} 
when using this package in publication. Hint: type \code{citation("bidask")}
\item Place the URL \url{https://github.com/eguidotti/bidask} 
in a footnote when using this package in other online material.
}
}
\examples{
# simulate a price process with spread 1\%
x <- sim(spread = 0.01)

# estimate the spread
edge(x$Open, x$High, x$Low, x$Close)

}
\references{
Ardia, D., Guidotti E., & Kroencke T. A. (2021). Efficient Estimation of Bid-Ask Spreads from Open, High, Low, and Close Prices. 
Available at SSRN: \url{https://www.ssrn.com/abstract=3892335}
}
