# https://github.com/rstudio/shiny-examples/blob/main/083-front-page/server.R
server <- function(input, output) {
  output[["p"]] <- shiny::renderPlot({
    ggplot2::ggplot(mtcars) +
      ggplot2::geom_histogram(
        ggplot2::aes(!!input[["var"]]),
        bins = input[["bins"]]
      ) +
      ggplot2::theme_bw(base_size = 20L)
  })
}
