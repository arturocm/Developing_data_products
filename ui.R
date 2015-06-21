library(shiny)

# Define UI for slider demo application
shinyUI(pageWithSidebar(
  
  #  Application title
  headerPanel("Visualizing Jitter"),

  sidebarPanel(
    h3('Select the Jitter factor value (per axis) that you want to visualize'),
    # Decimal interval with step value
    sliderInput("xjit", "Jitter factor for x axis", 
                min = 0, max = 10, value = 0, step= 0.5),
    # Decimal interval with step value
    sliderInput("yjit", "Jitter factor for y axis:", 
                min = 0, max = 10, value = 0, step= 0.5)
  ),
  
  # Show a table summarizing the values entered
  mainPanel(
    h5('Understanding your raw data is as important as analyzing it this is something 
       that a visualization approach can help you with. When you plot integer - or factor -  
       variables much of the advantages of visualization  slide away, UNLESS you understand a 
       great function such as **jitter()**! This simple shinny app will let  you plat with 
       the **jitter()** function in both x and y axis for a plot with factor variables. 
       It might not change the results of your predictive models, but it can sure help 
       you understand your data'),
    plotOutput("jitter_plot"))
  )
)