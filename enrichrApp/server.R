server = function(input, output) {
  
  #observeEvent(input$btn, {
    #js$backgroundCol(input$selector, input$col)
  #})
  
  observeEvent(input$btn, {
    js$enrich()
  })
}