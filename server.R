#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
data("ToothGrowth")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        y  <- c(4.2, 11.5, 7.3, 5.8, 6.4, 10.0, 11.2, 11.2, 5.2, 7.0,
                18.5, 16.5, 15.2, 17.3, 22.5, 17.3, 13/6, 14.5, 18.8,
                15.5, 23.6, 18.5, 33.9, 25.5, 26.4, 32.5, 26.7, 21.5,
                23.3, 29.5, 15.2, 21.5, 17.6, 9.7, 14.5, 10.0, 8.2, 
                9.4, 16.5, 9.7, 10.7, 23.3, 23.6, 26.4, 20.0, 25.2, 
                25.8, 21.2, 14.5, 27.3, 25.5, 26.4, 22.4, 24.5, 24.8,
                30.9, 26.4, 27.3, 29.4, 23.0)
        
        x <- c(0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1.0,
               1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 2.0, 2.0, 
               2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 0.5, 0.5, 0.5, 0.5,
               0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0,
               1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0,
               2.0, 2.0, 2.0, 2.0)
                                
                               
        Dose <- seq(min(x), max(x), length.out = input$bins)

        # draw the histogram with the specified number of bins
        hist(x,  breaks = Dose, col = 'darkgray', border = 'white')

    })

})
