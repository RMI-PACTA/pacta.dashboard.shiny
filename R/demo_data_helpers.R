tech_exposure_data <- function() {
  shiny::includeScript(
    system.file(
      "demodata", "data_techmix.json",
      package = "pacta.dashboard.shiny"
    )
  )
}
