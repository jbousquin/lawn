#' Create a multipoint
#'
#' @export
#' @param coordinates a list of point pairs, either as a list or json (e.g. of the
#' form \code{list(c(longitude, latitude), c(longitude, latitude))} OR
#' as JSON e.g. \code{[[longitude, latitude], [longitude, latitude]]}
#' @param properties a list of properties. Default: NULL
#' @family data functions
#' @return a \code{\link{data-MultiPoint}} feature
#' @examples
#' lawn_multipoint(list(c(-74.5, 40), c(-77.5, 45)))
#' lawn_multipoint("[[-74.5,40],[-77.5,45]]")
#' identical(
#'   lawn_multipoint(list(c(-74.5, 40), c(-77.5, 45))),
#'   lawn_multipoint("[[-74.5,40],[-77.5,45]]")
#' )
#' lawn_multipoint("[[-74.5,40],[-77.5,45]]",
#'   properties = list(city = 'Boston', population = 400))
#'
#' # Make a FeatureCollection
#' lawn_featurecollection(
#'   lawn_multipoint(list(c(-74.5, 40), c(-77.5, 45)))
#' )
lawn_multipoint <- function(coordinates, properties = NULL) {
  ct$eval(sprintf("var pt = turf.multiPoint(%s, %s);",
                  convert(coordinates), toj(properties)))
  as.mp(ct$get("pt"))
}
