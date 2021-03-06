% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/modeling.R
\name{model_experiment}
\alias{model_experiment}
\title{Model MSThermExperiment.}
\usage{
model_experiment(expt, proteins, np, ...)
}
\arguments{
\item{expt}{An MSThermExperiment object}

\item{proteins}{A vector of protein IDs to model (default is all
proteins).}

\item{np}{Number of parallel jobs to start (default = number of available
processors)}

\item{...}{Parameters passed to model_protein()}
}
\value{
MSThermResultSet object
}
\description{
Model multiple proteins from an MSThermExperiment object.
}
\examples{
control <- system.file("extdata", "demo_project/control.tsv", package="mstherm")
annots  <- system.file("extdata", "demo_project/annots.tsv",  package="mstherm")
expt    <- MSThermExperiment(control, annotations=annots)
expt    <- normalize_to_std(expt, "cRAP_ALBU_BOVIN", plot=FALSE)

res     <- model_experiment(expt, bootstrap=FALSE, np=2)
summary(res)

}
