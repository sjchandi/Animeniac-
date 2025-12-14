library(shiny)

# Source the landing page UI
source("ui/landingPage.R")

server <- function(input, output, session) {
  # Empty for now, will add logic later
}


shinyApp(ui = landingPageUI, server = server)
