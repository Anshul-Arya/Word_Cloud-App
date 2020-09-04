library(shiny)
library(shinydashboard)

fluidPage(
  # Applicaion Title
  titlePanel("Word Cloud"),
  
  sidebarLayout(
    # sidebar with a slider and selection inputs
    sidebarPanel(
      selectInput("selection", "Choose a Book:",
                  choices = books),
      actionButton("update", "Change"),
      hr(),
      sliderInput("freq",
                  "Minimum Frequency:",
                  min = 1, max = 50, value = 15),
      sliderInput("max",
                  "Maximum Number of Words:",
                  min = 1, max = 300, value = 100 )
    ),
    # Show Word Cloud
    mainPanel(
      plotOutput("plot")
    )
  )
)