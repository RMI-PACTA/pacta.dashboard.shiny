run_dashboard <- function() {
  log_info("Running dashboard")
  shiny::shinyApp(
    ui = ui(),
    server = server
  )
}
