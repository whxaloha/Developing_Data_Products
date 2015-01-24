library(shiny)
obesity <- function(BMI) BMI-30

shinyServer(
  function(input, output){
    output$inputValue <- renderPrint({input$BMI})
    output$prediction <- renderPrint({obesity(input$BMI)})
  }
)
