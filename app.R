library(shiny)

source("ui/landingPage.R")
source("modules/navbarUI.R")
source("modules/animeModalUI.R")
source("modules/bannerUI.R")
source("modules/buttonUI.R")
source("server/server.R")   
source("server/api_kitsu.R") 

#Landing page 
shinyApp(ui = landingPageUI, server = animeCards)
