\name{pssm}
\alias{pssm}
\docType{data}
\title{Profile scoring matrix derived from the LOGICOIL training set.}
\description{
This data set contains the Position Specific Scoring Matrix (PSSM) used as the LOGICOIL training set. This dataset was compiled from the CC+ coiled-coil database. This PSSM is used by LOGICOIL to predict the oligomeric state of coiled-coil sequences. More details on the training set can be found in the reference below.
}
\usage{data(pssm)}
\format{
  A data frame with 20295 observations on the following 18 variables.
  \describe{
    \item{\code{amino}}{a factor with levels \code{A} \code{C} \code{D} \code{E} \code{F} \code{G} \code{H} \code{I} \code{K} \code{L} \code{M} \code{N} \code{P} \code{Q} \code{R} \code{S} \code{T} \code{V} \code{W} \code{X} \code{Y}}
    \item{\code{register}}{a factor with levels \code{a} \code{b} \code{c} \code{d} \code{e} \code{f} \code{g}}
    \item{\code{ab}}{a factor with levels \code{0} \code{AE} \code{IR} \code{NL}}
    \item{\code{bc}}{a factor with levels \code{0} \code{ES}}
    \item{\code{cd}}{a factor with levels \code{0} \code{LT} \code{QN}}
    \item{\code{de}}{a factor with levels \code{0} \code{EL} \code{HD} \code{ID} \code{IK} \code{IL} \code{KD} \code{LK} \code{LQ} \code{NT} \code{SE} \code{TD} \code{TN} \code{TT}}
    \item{\code{ef}}{a factor with levels \code{0} \code{FG} \code{IT} \code{QG} \code{TT} \code{YK}}
    \item{\code{fg}}{a factor with levels \code{0} \code{KE} \code{KN} \code{LM} \code{QI} \code{RH} \code{RS} \code{SK} \code{TN} \code{TV}}
    \item{\code{ga}}{a factor with levels \code{0} \code{EN} \code{KV} \code{NK} \code{RV} \code{VA} \code{VI} \code{YL}}
    \item{\code{ad}}{a factor with levels \code{0} \code{AF} \code{AT} \code{IL} \code{LI} \code{LK} \code{LS} \code{NL} \code{RL} \code{VL}}
    \item{\code{be}}{a factor with levels \code{0} \code{AE} \code{KE} \code{QN} \code{RQ}}
    \item{\code{cf}}{a factor with levels \code{0} \code{SA}}
    \item{\code{dg}}{a factor with levels \code{0} \code{EH} \code{LE}}
    \item{\code{ea}}{a factor with levels \code{0} \code{IV} \code{YA}}
    \item{\code{ae}}{a factor with levels \code{0} \code{KI} \code{KQ} \code{LE} \code{LT} \code{NR} \code{YF}}
    \item{\code{bf}}{a factor with levels \code{0} \code{AK} \code{ED} \code{IH} \code{VT}}
    \item{\code{cg}}{a factor with levels \code{0} \code{DR} \code{EH} \code{EI} \code{HE} \code{MA} \code{QE} \code{VT}}
    \item{\code{da}}{a factor with levels \code{0} \code{II} \code{IL} \code{IS} \code{KI} \code{LK} \code{LN} \code{LR} \code{LV} \code{NI} \code{VI} \code{YA} \code{YT}}
  }
}
\source{DOI: 10.1093/bioinformatics/bts648}
\references{
Thomas L. Vincent, Peter J. Green and Dek N. Woolfson. "LOGICOIL-multi-state prediction of coiled-coil oligomeric state", 29(1), pp69-76, Bioinformatics, (2013).
}
\examples{
data(pssm)
head(pssm, 10)
}
\keyword{datasets}
