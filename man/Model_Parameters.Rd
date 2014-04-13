\name{Model_Parameters}
\alias{Model_Parameters}
\docType{data}
\title{
Model parameters for the LOGICOIL prediction algorithm.
}
\description{
A list containing five elements, each of which are required to run the LOGICOIL prediction algorithm.
}
\usage{data(Model_Parameters)}
\format{
A list containing five elements, which are required to run the LOGICOIL model:
\enumerate{
\item amino: a character vector containing allowed amino-acids.
\item register: a character vector containing allowed register assignments.
\item amino_interactions: a 87 x 2 matrix containing all amino-amino interactions considered in the LOGICOIL model.
\item register_interactions: a 87 x 2 matrix containing the matching register positions of the amino-amino interactions.
\item lag_matrix: a 7 x 7 matrix that gives the positional lag between register positions.
}
}
\source{DOI: 10.1093/bioinformatics/bts648}
\references{
Thomas L. Vincent, Peter J. Green and Dek N. Woolfson. "LOGICOIL-multi-state prediction of coiled-coil oligomeric state", 29(1), pp69-76, Bioinformatics, (2013). DOI: 10.1093/bioinformatics/bts648
}
\examples{
data(Model_Parameters)
names(Model_Parameters)

# Optional to run
# summary(Model_Parameters$amino)
# summary(Model_Parameters$register)
# head(Model_Parameters$amino_interactions, 5)
# head(Model_Parameters$register_interactions, 5)
# Model_Parameters$lag_matrix
}
\keyword{datasets}
