# Modules contains a UI and Server component. 
# Call ui component in ui.R; call server component in server.R
# Add additional arguments to functions if necessary

module_ui <- function(id) {
  ns <- NS(id) # ns is namespace
  
  tagList( 
    # use tagList with a set of UI widgets; wrap every ID in widget with ns()
    # selectInput(ns('dropdown'),
    #             label = 'xxxx',
    #             choices = 'xxxx')
    
  )
  
}

module_server <- function(id) {
  
  moduleServer(id, function(input, output, session) { 
    # every server component will have a moduleServer, everything will be nested inside here
    # reference inputs in the ui component like usual (input$dropdown)

    
  }) # end moduleServer
  
}