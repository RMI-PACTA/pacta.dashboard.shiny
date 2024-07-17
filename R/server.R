# https://github.com/rstudio/shiny-examples/blob/main/083-front-page/server.R
server <- function(input, output) {

  output[["main_plot"]] <- shiny::renderPlot({
    log_debug("Rendering main plot")

    hist(
      faithful[["eruptions"]],
      probability = TRUE,
      breaks = as.numeric(input[["n_breaks"]]),
      xlab = "Duration (minutes)",
      main = "Geyser eruption duration"
    )

    if (input[["individual_obs"]]) {
      logger::log_trace("Adding individual observations")
      rug(faithful[["eruptions"]])
    }

    if (input[["density"]]) {
      logger::log_trace("Adding density estimate")
      dens <- density(
        faithful[["eruptions"]],
        adjust = input[["bw_adjust"]]
      )
      lines(dens, col = "blue")
    }

  })
}
