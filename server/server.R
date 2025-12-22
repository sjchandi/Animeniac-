server <- function(input, output, session) {
  
  # DB connection
  con <- dbConnect(
    MySQL(),
    dbname = "animeniac",
    host = "localhost",
    port = 3306,
    user = "root",
    password = ""
  )
  
  # Track page
  currentPage <- reactiveVal("landingPage")
  
  output$pageUI <- renderUI({
    if (currentPage() == "landingPage") landingPageUI
    else watchlistPageUI
  })
  
  observeEvent(input$nav_home, { currentPage("landingPage") })
  observeEvent(input$nav_watchlist, { currentPage("watchlistPage") })
  
  # Open Add modal
  observeEvent(input$addButton, {
    showModal(crudModalUI("addModal"))
  })
  
  # Initialize CRUD module
  crudModalServer("addModal", con)
  
  # Render anime cards
  animeCardsServer("anime")
  
  # Disconnect DB on session end
  session$onSessionEnded(function() { DBI::dbDisconnect(con) })
}
