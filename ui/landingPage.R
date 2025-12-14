library(shiny)

source("modules/navbarUI.R")

landingPageUI = fluidPage(
  
  # Tailwind CDN
  tags$head(
    tags$script(src = "https://cdn.tailwindcss.com"),
    
    #remove default margin of fluid page
    tags$style(HTML("
      body, .container-fluid, .shiny-html-output {
        margin: 0;
        padding: 0;
      }
    "))
    
  ),
  
  navbarUI("mainNavbar", currentPage = "landingPage"),
  
  tags$img(
    src = "BannerLanding.png",  
    class = "w-full h-auto object-cover" 
  )
  
)
