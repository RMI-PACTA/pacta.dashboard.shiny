# Modified from https://rstudio.github.io/bslib/articles/dashboards/index.html
ui <- function() {
  bslib::page_navbar(
    theme = bslib::bs_theme(
      version = 5L,
      preset = "shiny"
    ),
    title = "PACTA Climate Alignment Tool",
    bslib::nav_panel(
      title = "PACTA Intro",
      page_intro
    ),
    bslib::nav_panel(
      title = "Executive Summary",
      page_executive_summary
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
}
