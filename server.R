server <- function(input, output, session) {
  
  # call server component of modules
  scatterplot_server('plot1', mtcars)
  scatterplot_server('plot2', diamonds)
  
  observeEvent(input$`plot1-go` | input$`plot2-go`, {
    # calling server component of modules AND using another modules' information as arguments 
    # Notice the backticks and the hyphenated combo of id and parameter name
    
    text_server('text1', 'Tab One', input$`plot1-x`, input$`plot1-y`)
    text_server('text2', 'Tab Two', input$`plot2-x`, input$`plot2-y`)
  })
  
  
}