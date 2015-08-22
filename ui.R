library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("mpg Estimation"),
  
  sidebarPanel(
    numericInput('wt', 'Weight ton', 3, min = 2, max = 6, step = 0.05),
    numericInput('am', 'Auto 0 Manu 1', 0, min = 0, max = 1, step = 1),
    submitButton('Estimate')
  ),
  mainPanel(
    h3('Result - mpg'),
    verbatimTextOutput("prediction")
  )
))