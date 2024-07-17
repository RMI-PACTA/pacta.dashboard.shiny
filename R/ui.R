# Modified from https://rstudio.github.io/bslib/articles/dashboards/index.html
ui <- bslib::page_navbar(
  title = "PACTA Climate Alignment Tool",
  bslib::nav_panel(
    title = "PACTA Intro",
    page_intro
  ),
  bslib::nav_panel(
    title = "Executive Summary",
    htmltools::p("This is the Executive Summary page.")
  ),
  bslib::nav_panel(
    title = "Portfolio-level Overview",
    htmltools::p("This is the Portfolio-level Overview page.")
  ),
  bslib::nav_panel(
    title = "Sector-level Analysis",
    htmltools::p("This is the Sector-level Analysis page.")
  ),
  bslib::nav_panel(
    title = "Company-level Analysis",
    htmltools::p("Coming Soon... This is the Company-level Analysis page.")
  ),
  bslib::nav_spacer(),
  bslib::nav_menu(
    title = "More",
    icon = shiny::icon("bars"),
    bslib::nav_item(link_pacta_site),
    bslib::nav_item(link_contact),
    bslib::nav_item(link_rmi_gh),
    align = "right"
  )
)
