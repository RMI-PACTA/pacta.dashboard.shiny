# https://github.com/rstudio/shiny-examples/blob/main/083-front-page/server.R
server <- function(input, output) {
  output[["gear"]] <- shiny::renderPlot({
    logger::log_debug("Rendering Gear Plot")
    ggplot2::ggplot(
      mtcars,
      ggplot2::aes(.data[["gear"]])
    ) +
      ggplot2::geom_bar()
  })

  output[["carb"]] <- shiny::renderPlot({
    logger::log_debug("Rendering Carb Plot")
    ggplot2::ggplot(
      mtcars,
      ggplot2::aes(.data[["carb"]])
    ) +
      ggplot2::geom_bar()
  })
}
