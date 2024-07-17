# https://github.com/rstudio/shiny-examples/blob/main/083-front-page/server.R
server <- function(input, output) {
  foo <- data.frame(
    x = stats::rpois(30L, 5L),
    y = round(stats::rnorm(30L) * 3L, 0L)
  )

  output[["gear"]] <- shiny::renderPlot({
    logger::log_debug("Rendering Gear Plot")
    ggplot2::ggplot(
      foo,
      ggplot2::aes(.data[["x"]])
    ) +
      ggplot2::geom_bar()
  })

  output[["carb"]] <- shiny::renderPlot({
    logger::log_debug("Rendering Carb Plot")
    ggplot2::ggplot(
      foo,
      ggplot2::aes(.data[["y"]])
    ) +
      ggplot2::geom_bar()
  })
}
