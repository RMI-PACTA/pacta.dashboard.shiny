run_dashboard <- function() {
  shiny::shinyApp(
    ui = ui,
    server = server
  )
}
