# https://github.com/rstudio/shiny-examples/blob/main/083-front-page/ui.R
ui <- bootstrapPage(

  selectInput(
    inputId = "n_breaks",
    label = "Number of bins in histogram (approximate):",
    choices = c(10L, 20L, 35L, 50L),
    selected = 20L
  ),

  checkboxInput(
    inputId = "individual_obs",
    label = strong("Show individual observations"),
    value = FALSE
  ),

  checkboxInput(
    inputId = "density",
    label = strong("Show density estimate"),
    value = FALSE
  ),

  plotOutput(outputId = "main_plot", height = "300px"),

  # Display this only if the density is shown
  conditionalPanel(
    condition = "input.density == true",
    sliderInput(
      inputId = "bw_adjust",
      label = "Bandwidth adjustment:",
      min = 0.2, max = 2L, value = 1L, step = 0.2
    )
  )

)
