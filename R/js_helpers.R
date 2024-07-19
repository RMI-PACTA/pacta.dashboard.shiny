tech_exposure_script <- function() {
  shiny::includeScript(
    system.file("js", "techexposure.js", package = "pacta.dashboard.shiny")
  )
}
