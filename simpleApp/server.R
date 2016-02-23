server <- function(input, output) {
  observeEvent(input$button, {
    toggle("hello")
  })
}
