% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graphFunctions.R
\name{lolli_plot}
\alias{lolli_plot}
\title{Create a Timeline of Selected Event Metrics.}
\usage{
lolli_plot(data, metric = "int_max", event_count = 3,
  xaxis = "date_start")
}
\arguments{
\item{data}{Output from the \code{\link{detect}} function.}

\item{metric}{One of \code{int_mean}, \code{int_max}, \code{int_cum} and \code{duration}.
Default is \code{int_cum}.}

\item{event_count}{The number of top events to highlight. Default is 3.}

\item{xaxis}{One of \code{event_no}, \code{date_start} or \code{date_peak}.
Default is \code{date_start}.}
}
\value{
The function will return a graph of the intensity of the selected
metric along the y-axis versus either \code{t} or \code{event_no}.
The number of top events as per \code{event_count} will be highlighted
in a brighter colour. This function differs in use from \code{\link{geom_lolli}}
in that it creates a stand alone figure. The benefit of this being
that one must not have any prior knowledge of ggplot2 to create the figure.
}
\description{
Visualise a timeline of several event metrics as 'lollipop' graphs.
}
\examples{
ts_dat <- make_whole(sst_NW_Atl)
res <- detect(ts_dat, climatology_start = "1983-01-01",
              climatology_end = "2012-12-31")

\dontrun{
lolli_plot(res, metric = "int_cum", event_count = 3, xaxis = "date_peak")
}
}
\author{
Albertus J. Smit and Robert W. Schlegel
}
