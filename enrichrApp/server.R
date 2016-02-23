server = function(input, output) {
  
 # observeEvent(input$btn, {
 #   js$backgroundCol(input$selector, input$col)
 # })
 # 
  observeEvent(input$btn, {
    js$enrich(list = "TEX41\nSSX2IP\nPLSCR5\nSLC14A2\nITPR2\n")
  })
}