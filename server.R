library(shiny)
data(mtcars)

shinyServer(
  function(input, output) {
    
#    form = reactive({input$variable})
    
    output$res <- renderTable({
      fit <- lm(paste("mpg ~ ", input$variable), data=mtcars)
      summary(fit)
    })
    
    output$newPlot <- renderPlot({
      fit <- lm(paste("mpg ~ ", input$variable), data=mtcars)
      plot(mtcars[,input$variable], mtcars$mpg, xlab=input$variable, ylab="mpg", main="Regression Line MPG")
      abline(fit$coefficients[1], fit$coefficients[2], col="red")
    })
    
  }
)