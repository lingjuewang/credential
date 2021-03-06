% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/credential_knots.R
\name{credentialknots}
\alias{credentialknots}
\title{Step 2 of Credentialing: Find Isotope Knots and Resolve Charge State}
\usage{
credentialknots(Knots, ppmwid = 9, rtwid = 1, mpc = c(12, 120), Ratio = 1/1, Ratio.lim = 0.1, 
maxnmer = 4, cd = 13.00335-12, .zs = 1:4)
}
\arguments{
\item{Knots}{list The original output of findknots()}

\item{ppmwid}{numeric Mass error tolerance (ppm) of credentialed knots.}

\item{rtwid}{numeric Retention time tolerance (seconds) of credentialed knots.}

\item{mpc}{numeric Mass-per-carbon filter. A vector of two values setting minimum and maximum theorectical mass per carbon.}

\item{Ratio}{numeric The mixing ratio of unlabled/labeled (12C/13C) samples.}

\item{Ratio.lim}{numeric Ratio filter. A decimal number (0,1] controling ranges of acceptable deviation of 
unlabeled/labeled ratio from mixing ratio.}

\item{maxnmer}{numeric Maximumly allowed number of knots in each credentialed groups, The default value is 4.}

\item{cd}{numeric Unit mass difference between unlabeled and labeled atoms. Defalut is 13C-12C = 13.00335 - 12.}

\item{.zs}{numeric Possible charge states of isotopologues. Default value is 1:4.}
}
\value{
list A list of three tables "knot_quipu", "quipu" and "quipu_stat". \code{knot_quipu} data.table The index of quipu-to-knot 
assignment. \code{quipu} data.table Aggregated information of all quipus: quipu#, nknot (number of knots), 
npeak (number of peaks), rtmean (mean retention time), basemz (lowest mz), mainmz 1 (credentialed pair - 
unlabeled mz). mainmz 2 (credentialed pair - labeled mz), int 1 (credentialed pair - intensity of unlabeled mz). 
int 2 (credentialed pair - intensity of labeled mz), ratio (ratio of unlabled/labeled intensity).
\code{quipu_stat} data.table Statistical information of all quipus: quipu#, minsupport (minimum number 
of peaks among the knots), maxsupport (maximum number of peaks among the knots), nknot
}
\description{
This function searches 'quipu' in knots. A quipu is a set of knots with same charge state and similar 
retention time and m/z spacing. A credentialed quipu also qualifies for theoretical mass-per-cabon range and 
ratio of the head-tail peak intensities
}
\seealso{
\code{\link{findknots}} \code{\link{credentialing}}
}
\keyword{credentialing}
\keyword{credentialknots}
