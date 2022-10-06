server <- function(input, output, session) {
  
  scatterplot_server('plot1', mtcars)
  scatterplot_server('plot2', diamonds)
  
}