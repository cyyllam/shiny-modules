# Modules contains a UI and Server component. 
# This module prints a sentence of what columns were used in a scatterplot.
# This is an example of a module that utilizes another module's inputs.

text_ui <- function(id) {
  ns <- NS(id) # ns is namespace
  
  textOutput(ns('textbox'))
}

text_server <- function(id, tab, x, y) {
  
  moduleServer(id, function(input, output, session) { # every server component will have a moduleServer, everything will be nested inside here
    
    output$textbox <- renderText({
      paste('Columns used in', tab, 'are:', x, 'and', y)
    })
    
  }) # end moduleServer
  
}