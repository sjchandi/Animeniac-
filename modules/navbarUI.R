navbarUI <- function(id, currentPage) {
  ns <- NS(id)  
  
  tags$nav(class = "border-b-4 border-orange-600 w-full h-24 flex items-center justify-between",
           
   # Logo 
   tags$a(class = "flex items-center h-full ml-8",
          tags$img(src = "LogoNav.png", 
                   alt = "Logo",
                   class = "h-full w-auto object-contain") 
   ),
   
   # Menu links 
   tags$ul(class = "flex space-x-6 mr-8",
           
     if (currentPage == "landingPage"){
       tagList(
         tags$li(tags$button(class = "text-orange-600 hover:text-orange-600 font-semibold transition duration-300", "Home")),
         tags$li(tags$button(class = "text-gray-500 hover:text-orange-600 font-semibold transition duration-300", "Watchlist"))
       )
      }
       else{
         tagList(
           tags$li(tags$button(class = "text-gray-500 hover:text-orange-600 font-semibold transition duration-300", "Home")),
           tags$li(tags$button(class = "text-orange-600 hover:text-orange-600 font-semibold transition duration-300", "Watchlist"))
         )
      }
   )
  )
}
