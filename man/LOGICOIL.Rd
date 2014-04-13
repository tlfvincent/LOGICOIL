\name{LOGICOIL}
\alias{LOGICOIL}
\title{
Predict oligomerization state of coiled-coil sequences.
}
\description{
Function for predicting the oligomeric state of a coiled-coil sequence. This function allows the user to separate between antiparallel dimer, parallel dimers, trimers and higher-order coiled coils.
}
\usage{
LOGICOIL(id, seq, reg, plot.result = FALSE)
}
\arguments{
  \item{id}{
A string identifier for the input coiled-coil sequence.
}
  \item{seq}{
The input coiled-coil sequence, which might a string or vector of amino-acids. The input must contain at least 14 characters. Valid characters should be uppercase letters and illegal terms include \sQuote{B}, \sQuote{J}, \sQuote{O}, \sQuote{U}, \sQuote{Z}. Invalid characters will not be tolerated and their use will result in a failure of the program. If the amino-acid in a coiled-coil sequence is unknown, it is permitted to use the identifier "X" instead
}
  \item{reg}{
The register assignments for the amino-acids in the coiled-coil sequence. The input may be either a string or a vector and must always have the same length as the \code{seq} argument. If this is not the case then the program will fail. Valid characters are the lowercase letters \sQuote{a} to \sQuote{g}. Register characters are not required to be in proper order
}
  \item{plot.result}{
A logical value indicating whether the results of the predictions should be plotted on a PNG file (default=FALSE). 
}
}
\value{
The function \code{LOGICOIL} is the parent function in the  \pkg{LOGICOIL} package. It is used to call the LOGICOIL prediction algorithm in order to predict the oligomeric state of a new coiled-coil sequence. The LOGICOIL function returns a vector with 4 items, which gives the odd ratio that the input sequence belongs to an antiparallel dimer, parallel, trimer or higher-order coiled coiled. If a given sequence scores \eqn{f(x)==1}, then there is no evidence for a particular oligomeric state. If \eqn{f(x) > 1} then there is strong evidence for a particular oligimeric state, and if \eqn{f(x) < 1} then there is against a particular oligimeric state.
}
\references{
Thomas L. Vincent, Peter J. Green and Dek N. Woolfson. "LOGICOIL-multi-state prediction of coiled-coil oligomeric state", 29(1), pp69-76, Bioinformatics, (2013). DOI: 10.1093/bioinformatics/bts648
}
\author{
Thomas L. Vincent \email{tlfvincent@gmail.com}
}
\examples{
library(nnet)
data(pssm)
data(Model_Parameters)
data(LOGICOILfit)

score <- LOGICOIL("GCN4wt", "MKQLEDKVEELLSKNYHLENEVARLKKLV", 
  	"abcdefgabcdefgabcdefgabcdefga", plot.result=FALSE)

# print output
print(score)
}