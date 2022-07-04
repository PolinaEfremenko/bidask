# Efficient Estimation of Bid-Ask Spreads from Open, High, Low, and Close Prices

Implements an efficient estimation procedure of the bid-ask spread from Open, High, Low, and Close prices as proposed in [Ardia, Guidotti, Kroencke (2021)](https://www.ssrn.com/abstract=3892335)

## Installation

You can install this program by executing the following code:

```stata
net install edge, from("https://raw.githubusercontent.com/eguidotti/bidask/tree/main/stata/")
```

This folder contains:

- STATA implementation in the file [`edge.ado`](https://github.com/eguidotti/bidask/tree/main/stata/edge.ado)
- Help file [`edge.sthlp`](https://github.com/eguidotti/bidask/tree/main/stata/edge.sthlp)
- Make file [`make.do`](https://github.com/eguidotti/bidask/tree/main/stata/make.do) to generate the package installation files `edge.pkg` and `stata.toc` (uses [`github`](http://github.com/haghish/github) package)

## Usage

```stata
help edge
```

## Cite as

*Ardia, David and Guidotti, Emanuele and Kroencke, Tim Alexander, "Efficient Estimation of Bid-Ask Spreads from Open, High, Low, and Close Prices". Available at SSRN: https://ssrn.com/abstract=3892335*

A BibTex  entry for LaTeX users is:

```bibtex
@unpublished{edge2021,
    author = {Ardia, David and Guidotti, Emanuele and Kroencke, Tim},
    title  = {Efficient Estimation of Bid-Ask Spreads from Open, High, Low, and Close Prices},
    year   = {2021},
    note   = {Available at SSRN}
    url    = {https://ssrn.com/abstract=3892335}
}
```

## Author of STATA program

Polina Efremenko

polina.efremenko@unine.ch

https://github.com/PolinaEfremenko

