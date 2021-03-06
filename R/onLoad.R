#' @importFrom V8 v8
ct <- NULL
rand <- NULL
ht <- NULL

.onLoad <- function(libname, pkgname){
  ct <<- V8::v8();
  ct$source(system.file("js/turf352.js", package = pkgname))
  ct$source(system.file("js/cloner.js", package = pkgname))
  ct$source(system.file("js/simple-statistics.js", package = pkgname))

  rand <<- V8::v8();
  rand$source(system.file("js/geojson_random.js", package = pkgname))

  ht <<- V8::v8();
  ht$source(system.file("js/geojsonhint-v2beta.js", package = pkgname))
}
