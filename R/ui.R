# Modified from https://rstudio.github.io/bslib/articles/dashboards/index.html
ui <- page_sidebar(
  title = "mtcars dashboard",
  sidebar = sidebar(
    title = "Histogram controls",
    varSelectInput(
      "var", "Select variable",
      dplyr::select_if(mtcars, is.numeric)
    ),
    numericInput("bins", "Number of bins", 30L)
  ),
  card(
    card_header("Histogram"),
    plotOutput("p")
  )
)
