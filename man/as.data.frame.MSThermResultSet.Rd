% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/export.R
\name{as.data.frame.MSThermResultSet}
\alias{as.data.frame.MSThermResultSet}
\title{MSResultSet to data frame.}
\usage{
\method{as.data.frame}{MSThermResultSet}(x, ...)
}
\arguments{
\item{x}{an MSResultSet object}

\item{...}{additional arguments passed to or from other functions}
}
\value{
A data frame populated with relevant information per result
}
\description{
Populates a data frame with information from an MSResultSet,
one row per protein/group
}
\examples{
control <- system.file("extdata", "demo_project/control.tsv", package="mstherm")
annots  <- system.file("extdata", "demo_project/annots.tsv",  package="mstherm")
expt    <- MSThermExperiment(control, annotations=annots)
expt    <- normalize_to_std(expt, "cRAP_ALBU_BOVIN", plot=FALSE)
res     <- model_experiment(expt, bootstrap=FALSE, np=2)

df <- as.data.frame(res)

}
