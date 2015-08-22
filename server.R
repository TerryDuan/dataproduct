data(mtcars)
fit_car <- lm(mpg ~ wt + am, data = mtcars)
estimate <- function(wt, am) predict(fit_car, data.frame(wt, am))

shinyServer(
  function(input, output){
    output$prediction <- renderPrint({estimate(input$wt, input$am)})
  }
)