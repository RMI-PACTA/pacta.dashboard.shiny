page_sector_analysis <- function() {
  bslib::layout_sidebar(
    sidebar = bslib::sidebar(
      htmltools::p("This is a sidebar!"),
      open = TRUE,
      title = "Sector Sidebar",
      shiny::inputPanel(
        shiny::sliderInput("bar_max", label = "Max:",
          min = 0L, max = 1L, value = 1L, step = 0.05
        )
      )
      ),
    bslib::layout_columns(
      bslib::card(
        full_screen = TRUE,
        bslib::card_header("Number of forward gears"),
        tech_exposure_script(),
        tech_exposure_data(),
        r2d3::d3Output("techmix")
        ),
      bslib::card(
        full_screen = FALSE,
        bslib::card_header("Look, it's Text!"),
        htmltools::p("This is some text")
      )
    )
  )
}
