# https://github.com/rstudio/shiny-examples/blob/main/083-front-page/server.R
server <- function(input, output) {
  foo <- data.frame(
    x = stats::rpois(30L, 5L),
    y = round(stats::rnorm(30L) * 3L, 0L)
  )

  output[["techmix"]] <- r2d3::renderD3({
    logger::log_debug("Rendering TechMix Plot")
    logger::log_trace("bar_max: {input$bar_max}")
    r2d3::r2d3(
      stats::runif(5L, 0L, input[["bar_max"]]),
      script = system.file("examples", "baranims.js", package = "r2d3")
    )
  })

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
