buttonUI <- function(id, text, size = 4) {
  actionButton(
    inputId = id,
    label = text,
    class = paste0(
      "bg-orange-600 hover:bg-orange-700 active:bg-orange-700 ",  # keep color when active
      "text-white font-bold py-2 px-", size, " rounded transition-all duration-200 ",
      "focus:outline-none focus:ring-0"
    )
  )
}