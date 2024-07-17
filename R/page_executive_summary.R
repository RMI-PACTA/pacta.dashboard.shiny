vbs <- list(
  bslib::value_box(
    title = "1st value",
    value = "72%",
    showcase = shiny::icon("chart-simple"),
    htmltools::p("The 1st detail")
  ),
  bslib::value_box(
    title = "2nd value",
    value = "456",
    showcase = shiny::icon("chart-line"),
    htmltools::p("The 2nd detail"),
    htmltools::p("The 3rd detail")
  ),
  bslib::value_box(
    title = "3rd value",
    value = "4.3 out of 10",
    showcase = shiny::icon("chart-pie"),
    htmltools::p("The 4th detail"),
    htmltools::p("The 5th detail"),
    htmltools::p("The 6th detail")
  ),
  bslib::value_box(
    title = "4rd value",
    value = "789",
    showcase = shiny::icon("building-columns"),
    htmltools::p("The 7th detail")
  )
)


page_executive_summary <- bslib::page_fillable(
  title = "Executive Summary",
  htmltools::p("This page is resizable!"),
  bslib::layout_column_wrap(
    width = "250px",
    !!!vbs
  ),
  bslib::layout_columns(
    bslib::card(
      full_screen = TRUE,
      bslib::card_header("Number of forward gears"),
      shiny::plotOutput("gear")
    ),
    bslib::card(
      full_screen = TRUE,
      bslib::card_header("Number of carburetors"),
      shiny::plotOutput("carb")
    )
  )
)
