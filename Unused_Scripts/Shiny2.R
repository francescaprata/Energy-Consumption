##library
library(shiny)
library(shinydashboard)

ui <- dashboardPage(dashboardHeader(title = "Trial 1"),
                    dashboardSidebar(menuItem(text = "First menu", 
                                              tabName = "firstMenuName", 
                                              sliderInput(inputId = "sliderInput", 
                                                          label = "N of breaks" ), 
                                              min = 0, 
                                              max = 50, 
                                              value = 25),
                                     menuItem(text = "Second menu", 
                                              tabName = "secondMenuName")),
                    dashboardBody(fluidRow(box(plotOutput(outputId = "plotHistogram")))))

server <- function(input, output,)
{output$plotHistogram <- renderPlot(
  {hist(data$age, 
          breaks = input$sliderInput)})}

shinyApp(ui, server)