server <- function(input, output, session) {
  
  # call server component of module here
  scatterplot_server('plot1', mtcars)
  scatterplot_server('plot2', diamonds)
  
}