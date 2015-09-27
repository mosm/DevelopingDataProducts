library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Mtcars Regression Analysis"),
  sidebarPanel(
    h3('Regression Variables'),
    radioButtons("variable", "Variable:", 
                       c("Cylinders" = "cyl",
                         "Transmission" = "am",
                         "Displacement" = "disp",
                         "Horsepower" = "hp", 
                         "Rear axle ratio" = "drat", 
                         "Weight" = "wt",
                         "1/4 mile time" = "qsec", 
                         "Engine type" = "vs",
                         "Number of gears" = "gear", 
                         "Number of carburators" = "carb"))
  ),
  mainPanel(
    p('Select a variable in the sidebar. Upon selection, a regression model will be fitted for the 
      mtcars dataset. The regression details will be presented in the table below and a scatter plot with
      regression line will be plotted below, plotting miles per gallon against the selected variable,'),
    p('This allows initial exploration of the relation between miles per gallon and the various other 
      variables available in the mtcars dataset.'),
    h3('Regression Table and Plot'),
    tableOutput('res'),
    plotOutput('newPlot')
  )
))
