% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deviation.R
\name{lawn_deviation}
\alias{lawn_deviation}
\title{Standard deviation of a field among points within polygons}
\usage{
lawn_deviation(polygons, points, in_field, out_field = "deviation",
  lint = FALSE)
}
\arguments{
\item{polygons}{Polygon(s) defining area to aggregate.}

\item{points}{Points with values to aggregate.}

\item{in_field}{Characater for the name of the field on \code{pts} on
which you wish to perfrom the aggregation}

\item{out_field}{Characater for the name of the field on the ouput
polygon FeatureCollection that will store the resultant value.}

\item{lint}{(logical) Lint or not. Uses geojsonhint. Takes up increasing time
as the object to get linted increases in size, so probably use by
default for small objects, but not for large if you know they are good geojson
objects. Default: \code{FALSE}}
}
\value{
polygons with appended field representing deviation, as a
\code{\link{data-FeatureCollection}}
}
\description{
Calculates the population standard deviation (i.e. denominator = n,
not n-1) of values from \code{\link{data-Point}}'s within a set of
\code{\link{data-Polygon}}'s
}
\examples{
\dontrun{
ex_polys <- lawn_data$polygons_aggregate
ex_pts <- lawn_data$points_aggregate
lawn_deviation(ex_polys, ex_pts, "population")
}
}
\author{
Jeff Hollister \email{hollister.jeff@epa.gov}
}
\seealso{
Other aggregations: \code{\link{lawn_average}},
  \code{\link{lawn_collect}}, \code{\link{lawn_count}},
  \code{\link{lawn_max}}, \code{\link{lawn_median}},
  \code{\link{lawn_min}}, \code{\link{lawn_sum}},
  \code{\link{lawn_variance}}
}

