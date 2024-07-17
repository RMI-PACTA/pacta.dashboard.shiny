page_intro <- bslib::page_fillable(
  title = "PACTA Introduction",
  htmltools::p("This is the PACTA Intro page."),
  htmltools::p("PACTA is love"),
  htmltools::p("PACTA is life"),
  htmltools::h1("PACTA is a Dashboard"),
  htmltools::p(
    "Here is some sample text.",
    "We can use the normal formatting, such as",
    htmltools::strong("bold"),
    htmltools::em("italic"),
    "and",
    htmltools::code("code"),
    " text."
  ),
  htmltools::div(
    id = "myDiv", class = "simpleDiv",
    "Here is a div with some attributes."
  )
)
