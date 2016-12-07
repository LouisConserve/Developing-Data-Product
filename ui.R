library(shiny)
shinyUI(fluidPage("Select the best car for your trip",
  tabPanel("Predict Horsepower from MPG"),
  sidebarLayout(
    sidebarPanel(
      helpText("Provide information about your trip and the carachteristics of the car that you want"),
      numericInput('dis', 'Distance (in miles):', 50, min = 1, max = 1000),
      numericInput('gas', 'Maximum expenditure on gasoline:', 50, min=1, max=1000),
      checkboxGroupInput('cyl', 'Number of cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)),
      checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1)),
      sliderInput('disp', 'Displacement', min=70, max=480, value=c(70,480), step=10),
      sliderInput('hp', 'Gross horsepower', min=50, max=340, value=c(50,340), step=10),
      helpText("Thanks to Rafael Encinas")
    ),
    mainPanel(
      dataTableOutput('table')
    )
  )
))
