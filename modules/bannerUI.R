bannerUI <- function(id) {
  ns <- NS(id)
  
  tagList(
    # Carousel wrapper
    tags$div(
      class = "relative w-full overflow-hidden rounded-base mb-10",
      style = "min-height: 500px;",
      
      tags$div(
        id = ns("slide1"),
        class = "absolute inset-0 transition-opacity duration-1000 ease-in-out opacity-100",
        tags$img(src = "LandingBanner1.png", class = "w-full h-full object-cover")
      ),
      tags$div(
        id = ns("slide2"),
        class = "absolute inset-0 transition-opacity duration-1000 ease-in-out opacity-0",
        tags$img(src = "LandingBanner2.png", class = "w-full h-full object-cover")
      ),
      tags$div(
        id = ns("slide3"),
        class = "absolute inset-0 transition-opacity duration-1000 ease-in-out opacity-0",
        tags$img(src = "LandingBanner3.png", class = "w-full h-full object-cover")
      ),
      tags$div(
        id = ns("slide4"),
        class = "absolute inset-0 transition-opacity duration-1000 ease-in-out opacity-0",
        tags$img(src = "LandingBanner4.png", class = "w-full h-full object-cover")
      )
    ),
    
    # JavaScript 
    tags$script(HTML(sprintf("
      (function () {
        let current = 0;
        const slides = [
          '%s','%s','%s','%s'
        ];

        setInterval(() => {
          const prev = current;
          current = (current + 1) %% slides.length;

          document.getElementById(slides[prev])?.classList.replace('opacity-100', 'opacity-0');
          document.getElementById(slides[current])?.classList.replace('opacity-0', 'opacity-100');
        }, 5000);
      })();
    ",
     ns("slide1"),
     ns("slide2"),
     ns("slide3"),
     ns("slide4")
    )))
  )
}