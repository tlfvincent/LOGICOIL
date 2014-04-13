\name{EstimateProbability}
\alias{EstimateProbability}
\title{
Estimate oligomeric state score at each position of the input coiled-coil sequence
}
\description{
Sub-function used in LOGICOIL to compute the oligomeric state score 
of input coiled-coil sequences.
}
\usage{
EstimateProbability(id, seq, reg, pssm, LOGICOILfit, Model_Parameters)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{id}{A string that represents the id name of the input sequence}
  \item{seq}{ A character string of the amino-acid sequence to be predicted. Valid characters are all uppercase letters except \sQuote{B}, \sQuote{J}, \sQuote{O}, \sQuote{U}, \sQuote{X}, and \sQuote{Z}; }
  \item{reg}{A character string of register assignements. Valid characters are the lowercase letters \sQuote{a} to \sQuote{g}. Register characters are not required to be in proper order and may start with any of the seven letters. It must always have the same length as the matching amino-acid sequence.}
  \item{pssm}{
A profile scoring matrix generated from the LOGICOIL training data.
}
  \item{LOGICOILfit}{
The fitted model for LOGICOIL obtained using the original training data.
}
  \item{Model_Parameters}{
A list containing five elements, which are required to run the LOGICOIL model:
\enumerate{
\item amino: a character vector containing allowed amino-acids.
\item register: a character vector containing allowed register assignments.
\item amino_interactions: a 87 x 2 matrix containing all amino-amino interactions considered in the LOGICOIL model.
\item register_interactions: a 87 x 2 matrix containing the matching register positions of the amino-amino interactions.
\item lag_matrix: a 7 x 7 matrix that gives the positional lag between register positions.
}
}
}
\value{
Returns a matrix of dimension n x 4, where n is the length of the input coiled-coil sequence, and each column represents the LOGICOIL scores for antiparallel dimer, parallel, trimer and higher-order coiled coiled. For examples, the first row gives the predicted LOGICOIL scores of the first position of the input coiled-coil sequence. If a given sequence scores \eqn{f(x)==1}, then there is no evidence for a particular oligomeric state. If \eqn{f(x) > 1} then there is strong evidence for a particular oligimeric state, and if \eqn{f(x) < 1} then there is less evidence against a particular oligimeric state.
}
\references{
Thomas L. Vincent, Peter J. Green and Dek N. Woolfson. "LOGICOIL-multi-state prediction of coiled-coil oligomeric state", 29(1), pp69-76, Bioinformatics, (2013). DOI: 10.1093/bioinformatics/bts648
}
\author{
Thomas L. Vincent \email{tlfvincent@gmail.com}
}
\examples{
# load pssm data
library(nnet)
data(pssm)
data(Model_Parameters)
data(LOGICOILfit)

# priors obtained from LOGICOIL training set
prior <- c(0.6331,0.237,0.053,0.0769)
  
# compute test scores
cat("Estimating oligomeric state of coiled-coil sequences")
prob.oligo <- EstimateProbability("GCN4wt", 
  		"MKQLEDKVEELLSKNYHLENEVARLKKLV", 
			"abcdefgabcdefgabcdefgabcdefga", 
      pssm, 
      LOGICOILfit, 
      Model_Parameters)

# compute final summary probability for whole sequence
score <- apply(prob.oligo, 2, mean) / prior

# print output
print(score)

}