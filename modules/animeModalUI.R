animeModalUI <- function(id, title, synopsis, youtube, poster, category, airdate) {
  tags$div(
    id = id,
    tabindex = "-1",
    class = "fixed inset-0 z-50 flex items-center justify-center overflow-y-auto",
    
    # Backdrop overlay
    tags$div(
      class = "fixed inset-0 bg-black bg-opacity-50"
    ),
    
    # Modal content wrapper
    tags$div(
      class = "relative p-4 w-full max-w-7xl max-h-[90vh] z-10 overflow-y-auto",
      tags$div(
        class = "relative bg-white border border-gray-300 rounded-lg shadow-lg p-6",
        
        # Title
        tags$h2(
          class = "text-3xl font-bold mb-4 text-center",
          title
        ),
        
        # YouTube iframe 
        if (!is.null(youtube) && youtube != "") {
          tags$div(
            class = "mt-6 aspect-video",
            tags$iframe(
              src = paste0("https://www.youtube.com/embed/", youtube),
              width = "100%",
              height = "100%",
              frameborder = "0",
              allow = "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture",
              allowfullscreen = NA
            )
          )
        }
      )
    )
  )
}
