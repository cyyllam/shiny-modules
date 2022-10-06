navbarPage(title = "Shiny Modules Reprex",
           id = 'navbar',
           theme = bs_theme(version = 5),
            
           tabPanel(title = 'Tab One',
                    scatterplot_ui('plot1', mtcars, "Motor Trend Car Road Tests, aka mtcars")),
           
           tabPanel(title = 'Tab Two',
                    scatterplot_ui('plot2', diamonds, "Diamonds"))
           
           )