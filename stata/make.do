// the 'make.do' file is automatically created by 'github' package.
// execute the code below to generate the package installation files.
// DO NOT FORGET to update the version of the package, if changed!
// for more information visit http://github.com/haghish/github
make edge, replace toc pkg ///
	title("Efficient Estimation of Bid-Ask Spreads from Open, " ///
		  "High, Low, and Close Prices") ///
	version("1.0.1") ///
	description("Implements an efficient estimator of the effective "    ///
				"bid-ask spread from Open, High, Low, and Close prices " ///
				"as proposed in Ardia, Guidotti, Kroencke (2021)") ///
	license("GPL-3.0") ///
	author("Polina Efremenko") ///
	affiliation("University of Neuchatel") ///
	url("https://github.com/PolinaEfremenko") ///
	email("polina.efremenko@unine.ch") ///
	install("edge.ado;edge.sthlp")
