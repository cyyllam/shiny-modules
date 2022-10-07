navbarPage(title = "Shiny Modules Reprex",
           theme = bs_theme(version = 5),
          
           # call ui component of modules here:  
           tabPanel(title = 'Tab One',
                    scatterplot_ui('plot1', mtcars, "Motor Trend Car Road Tests, aka mtcars")),
           
           tabPanel(title = 'Tab Two',
                    scatterplot_ui('plot2', diamonds, "Prices of over 50,000 round cut diamonds, aka diamonds")),
           
           tabPanel(title = 'Tab Three',
                    text_ui('text1'),
                    text_ui('text2'))
           
           )