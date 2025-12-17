modal <- function(id, firstname) {
  modalDialog(
    title = paste("User ID:", id),
    paste("Hello,", firstname),
    easyClose = TRUE,
    footer = modalButton("Close"),
    size = "l"  # "s" = small, "m" = medium, "l" = large
  )
}

