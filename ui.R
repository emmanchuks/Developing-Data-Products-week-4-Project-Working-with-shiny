#Documentation:
#The response is the length of odontoblasts (cells responsible for tooth growth)
#in 60 guinea pigs. Each animal received one of three dose levels of vitamin C
#(0.5, 1, and 2 mg/day) by one of two delivery methods, orange juice or ascorbic
#form of vitamin C and coded as VC).

#This shiny app demostrates the relationship between the the dose of vitamin c 
#and its effect on the length of the odontoblasts cells graphically. As you
#slide the dose, the length reflect on histogram accordingly

    
library(shiny)
data("ToothGrowth")
# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("ToothGrowth Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Dose(mg/day)",
                        min = 4.2,
                        max = 29.5,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
