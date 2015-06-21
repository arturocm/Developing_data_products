library(shiny)
library(datasets)
data <- airquality

# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
  
  # Generate a plot of the requested variable against mpg and only 
  # include outliers if requested
  output$jitter_plot <- renderPlot({
    plot(jitter(Temp, factor = {input$yjit})~jitter(Month, factor = {input$xjit}),
         data=airquality,
         ylab='',xlab='')
    title(main="Temp vs Month (airquality dataset)", 
          xlab = paste("Month jitter by a factor of",{input$xjit},sep=" "),
          ylab = paste("Temp jitter by a factor of",{input$yjit},sep=" "))
  })
})