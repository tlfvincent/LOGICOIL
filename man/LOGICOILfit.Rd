\name{LOGICOILfit}
\alias{LOGICOILfit}
\docType{data}
\title{
Fit of the multinomial log-linear model obtained from the LOGICOIL training dataset.
}
\description{
A nnet object containing the results of fitting a muiltinomial log-linear model via neural network to the LOGICOIL training dataset. It is used to generate the LOGICOIL predictions.
}
\usage{data(LOGICOILfit)}
\format{
A \code{nnet} object
}

\source{DOI: 10.1093/bioinformatics/bts648}
\references{
Thomas L. Vincent, Peter J. Green and Dek N. Woolfson. "LOGICOIL-multi-state prediction of coiled-coil oligomeric state", 29(1), pp69-76, Bioinformatics, (2013). DOI: 10.1093/bioinformatics/bts648
Venables, W. N. and Ripley, B. D. (2002) Modern Applied Statistics with S. Fourth edition. Springer.  
}
\examples{
data(LOGICOILfit)
names(LOGICOILfit)
LOGICOILfit$coefnames
}
\keyword{datasets}
