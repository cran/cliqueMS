## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----message=FALSE, xcms-------------------------------------------------
library(cliqueMS)
mzfile <- system.file("standards.mzXML", package = "cliqueMS")
msSet <- xcms::xcmsSet(files = mzfile, method = "centWave", ppm = 15, peakwidth = c(5,20), snthresh = 10)

## ----anclique------------------------------------------------------------
ex.anClique <- anClique(msSet)
summary(ex.anClique)

## ----cliquefind, include = TRUE------------------------------------------
library(cliqueMS)
set.seed(2)
ex.cliqueGroups <- getCliques(msSet, filter = TRUE)
summary(ex.cliqueGroups)

## ----isotopes, include = TRUE--------------------------------------------
ex.Isotopes <- getIsotopes(ex.cliqueGroups, ppm = 10)
summary(ex.Isotopes)

## ----positive, include = TRUE--------------------------------------------
head(positive.adinfo)

## ----adducts, include = TRUE---------------------------------------------
ex.Adducts <- getAnnotation(ex.Isotopes, ppm = 10,
	   adinfo = positive.adinfo, polarity = "positive")
summary(ex.Adducts)

## ----peaklist, include = TRUE--------------------------------------------
features.clique6 <- ex.Adducts$cliques[[6]]
head(ex.Adducts$peaklist[features.clique6,
	c("an1","mass1","an2", "mass2", "an3", "mass3", "an4", "mass4", "an5", "mass5")], n = 10)

