% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/envelope.R
\name{lawn_envelope}
\alias{lawn_envelope}
\title{Calculate envelope around features}
\usage{
lawn_envelope(fc, lint = FALSE)
}
\arguments{
\item{fc}{\code{\link{data-FeatureCollection}}}

\item{lint}{(logical) Lint or not. Uses geojsonhint. Takes up increasing time
as the object to get linted increases in size, so probably use by
default for small objects, but not for large if you know they are good geojson
objects. Default: \code{FALSE}}
}
\value{
a rectangular \code{\link{data-Polygon}} feature that
encompasses all vertices
}
\description{
Takes any number of features and returns a rectangular
\code{\link{data-Polygon}} that encompasses all vertices.
}
\examples{
fc <- '{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "properties": {
        "name": "Location A"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [-75.343, 39.984]
      }
    }, {
      "type": "Feature",
      "properties": {
        "name": "Location B"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [-75.833, 39.284]
      }
    }, {
      "type": "Feature",
      "properties": {
        "name": "Location C"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [-75.534, 39.123]
      }
    }
  ]
}'
lawn_envelope(fc)
}
\seealso{
Other measurements: \code{\link{lawn_along}},
  \code{\link{lawn_area}}, \code{\link{lawn_bbox_polygon}},
  \code{\link{lawn_bbox}}, \code{\link{lawn_bearing}},
  \code{\link{lawn_center}}, \code{\link{lawn_centroid}},
  \code{\link{lawn_destination}},
  \code{\link{lawn_distance}}, \code{\link{lawn_extent}},
  \code{\link{lawn_line_distance}},
  \code{\link{lawn_midpoint}},
  \code{\link{lawn_point_on_surface}},
  \code{\link{lawn_square}}
}

