# This module comprises a UI and Server component. 
# This will return a full layout with scatterplot and selectInput widgets to determine what populates the X & Y axis

scatterplot_ui <- function(id, data, title) {
  ns <- NS(id) # ns is namespace
  
  tagList( # use tagList with a set of UI widgets; wrap every ID in widget with ns()
    sidebarLayout(
      sidebarPanel(
        h2(title),
        selectInput(ns('x'),
                    label = 'X',
                    choices = colnames(data)),
        selectInput(ns('y'),
                    label = 'Y',
                    choices = colnames(data),
                    selected = colnames(data)[2]),
        actionButton(ns('go'),
                     label = 'Enter')
      ),
      mainPanel(
        plotOutput(ns('plot'))
      )
    )
    
  ) # end tagList
  
}

scatterplot_server <- function(id, data) {
  
  moduleServer(id, function(input, output, session) { # every server component will have a moduleServer, everything will be nested inside here
    
    gg <- eventReactive(input$go, {
      ggplot(data) +
        geom_point(aes_string(x = input$x, y = input$y))
    })
    
    output$plot <- renderPlot({
      gg()
    })
    
    
  }) # end moduleServer
  
}