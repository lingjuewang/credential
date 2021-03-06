% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{plot.quipu}
\alias{plot.quipu}
\title{Diagnostic Plotting Function for Quipu}
\usage{
plot.quipu(.quipu=NULL, quipus, knots, features, export = TRUE, file = "quipu.pdf", ...)
}
\arguments{
\item{.quipu}{numeric quipu index.}

\item{quipus}{list Quipus aka credentialed knots. The output of \code{\link{credentialknots}}}

\item{knots}{list Knots. The output of \code{\link{findknots}}}

\item{features}{data.table The featue table.}

\item{export}{logical Whether to export or not.}

\item{file}{file name of the export pdf.}

\item{...}{Further arguments to be passed.}
}
\value{
This function is a plotting function with no output but an exported pdf file.
}
\description{
This function generate plots of quipu (credentialed knots).
}
\seealso{
\code{\link{plot.knots}}
}
