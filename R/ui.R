# Modified from https://rstudio.github.io/bslib/articles/dashboards/index.html
ui <- bslib::page_sidebar(
  title = "mtcars dashboard",
  sidebar = bslib::sidebar(
    title = "Histogram controls",
    shiny::varSelectInput(
      "var", "Select variable",
      dplyr::select_if(mtcars, is.numeric)
    ),
    shiny::numericInput("bins", "Number of bins", 30L)
  ),
  bslib::card(
    bslib::card_header("Histogram"),
    shiny::plotOutput("p")
  )
)
