# Modules contains a UI and Server component. 
# Call ui component in ui.R; call server component in server.R

module_ui <- function(id) {
  ns <- NS(id) # ns is namespace
  
  tagList( # use tagList with a set of UI widgets; wrap every ID in widget with ns()
    
  )
  
}

module_server <- function(id) {
  
  moduleServer(id, function(input, output, session) { # every server component will have a moduleServer, everything will be nested inside here

    
  }) # end moduleServer
  
}