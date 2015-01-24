library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Obesity Prediction (If BMI -30 > 0, then you are in the category of obesity)"),
  
  sidebarPanel(
    numericInput('BMI','BMI weight(kg)/height(m)^2',0,min = 0, max = 100, step = 0.1),
    submitButton('Submit')
  ),
  mainPanel(
    h3('Results of prediction'),
    h4('You entered'),
    verbatimTextOutput("inputValue"),
    h4('You BMI - 30 equals to'),
    verbatimTextOutput("prediction")
  )
 )
)
