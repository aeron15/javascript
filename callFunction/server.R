server = function(input, output) {
  observeEvent(input$col, {
    js$pageCol(input$col)
  })
}
