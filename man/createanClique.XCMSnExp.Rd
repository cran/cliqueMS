% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/allClasses.R
\name{createanClique.XCMSnExp}
\alias{createanClique.XCMSnExp}
\title{'createanClique.XCMSnExp' produces an object of class 'anClique'.}
\usage{
\method{createanClique}{XCMSnExp}(mzData)
}
\arguments{
\item{mzData}{A 'XCMSnExp' object with processed m/z data.}
}
\description{
\code{anClique} creates an 'anClique' object from 'XCMSnExp' processed m/z data.
}
\examples{
\donttest{
library(cliqueMS)
mzfile <- system.file("standards.mzXML", package = "cliqueMS")
rawMS <- MSnbase::readMSData(files = mzfile, mode = "onDisk")
cpw <- xcms::CentWaveParam(ppm = 15, peakwidth = c(5,20), snthresh = 10)
msnExp <- xcms::findChromPeaks(rawMS, cpw)
ex.anClique <- createanClique.XCMSnExp(msnExp)
summary(ex.anClique)
}
}
\seealso{
\code{\link{anClique-class}}
}
