\name{LOGICOIL-package}
\alias{LOGICOIL-package}
\docType{package}
\title{
Predict oligomerization state of coiled-coil sequences.
}
\description{
Functions for predicting the oligomeric state of user-defined coiled-coil sequencse. Those functions allow the user to separate between antiparallel dimer, parallel dimers, trimers and higher-order coiled coils.
}
\details{
\tabular{ll}{
Package: \tab LOGICOIL\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-04-12\cr
License: \tab What license is it under?\cr
}
Functions in the LOGICOIL package allow users to apply the LOGICOIL prediction algorithm to predict the oligomeric state of coiled-coil sequences.
}
\author{Thomas L. Vincent \email{tlfvincent@gmail.com}}
\references{
Thomas L. Vincent, Peter J. Green and Dek N. Woolfson. "LOGICOIL-multi-state prediction of coiled-coil oligomeric state", 29(1), pp69-76, Bioinformatics, (2013). DOI: 10.1093/bioinformatics/bts648
}
\examples{
library(nnet)
data(pssm)
data(Model_Parameters)
data(LOGICOILfit)

score <- LOGICOIL("GCN4wt", "MKQLEDKVEELLSKNYHLENEVARLKKLV", 
    "abcdefgabcdefgabcdefgabcdefga", plot.result=TRUE)

# print output
print(score)
}