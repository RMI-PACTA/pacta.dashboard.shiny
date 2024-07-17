page_company_analysis <- bslib::page_fillable(
  title = "Portfolio-level Overview",
  bslib::card(
    full_screen = FALSE,
    bslib::card_header(
      class = "bg-dark",
      "Coming Soon..."
    ),
    bslib::card_body(
      htmltools::p("This is the Company-level Analysis page."),
      fillable = FALSE
    )
  )
)
