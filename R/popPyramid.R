#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
popPyramid <- function(indata, width = NULL, height = NULL) {


  # forward options using x
  x = list(
    indata = jsonlite::toJSON(indata)
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'popPyramid',
    x,
    width = width,
    height = height,
    package = 'popPyramid'
  )
}

#' Widget output function for use in Shiny
#'
#' @export
popPyramidOutput <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'popPyramid', width, height, package = 'popPyramid')
}

#' Widget render function for use in Shiny
#'
#' @export
renderPopPyramid <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, popPyramidOutput, env, quoted = TRUE)
}


#' custom html function for populationPyramid
#'
#' @import htmltools
gradientTable_html <- function(id, style, class, ...){
  tagList(
    tags$div( id = id, class = class, style = style
              ,tags$div(class = "chart-main",id="pyramid")
    )
  )
}
