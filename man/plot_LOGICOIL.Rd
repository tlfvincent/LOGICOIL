\name{plot_LOGICOIL}
\alias{plot_LOGICOIL}
\title{
Plot the LOGICOIL scores
}
\description{
This function can be used to plot the results of applying the LOGICOIL prediction algorithm to user-defined coiled-coil sequences. The plot helps visualize the LOGICOIL scores at each position of the coiled-coil sequence.
}
\usage{
plot_LOGICOIL(prob.oligo, id)
}
\arguments{
  \item{prob.oligo}{
A matrix of dimension n x 4, where n is the length of the input coiled-coil sequence, and each column represents the LOGICOIL scores for antiparallel dimer, parallel, trimer and higher-order coiled coiled. 
}
  \item{id}{
A string that represents the id name of the input sequence.
}
}
\details{
The required input for this function can be obtained by running the \code{EstimateProbability} function (see example).
}
\value{
A PNG file that shows the LOGICOIL prediction scores at each of the position of the input coiled-coil sequence.
}
\references{
Thomas L. Vincent, Peter J. Green and Dek N. Woolfson. "LOGICOIL-multi-state prediction of coiled-coil oligomeric state", 29(1), pp69-76, Bioinformatics, (2013).
}
\author{
Thomas L. Vincent \email{tlfvincent@gmail.com}
}
\examples{
library(nnet)
data(pssm)
data(Model_Parameters)
data(LOGICOILfit)

cat("Estimating oligomeric state of coiled-coil sequences\n")
prob.oligo <- EstimateProbability("GCN4wt",
  "MKQLEDKVEELLSKNYHLENEVARLKKLV",
  "abcdefgabcdefgabcdefgabcdefga",
  pssm,
  LOGICOILfit,
  Model_Parameters)

# plot LOGICOIL results obtained from user-defined coiled-coil sequences
plot_LOGICOIL(prob.oligo, "GCN4wt")

}

