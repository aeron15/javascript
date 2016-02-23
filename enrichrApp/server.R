server = function(input, output) {
  
  #observeEvent(input$btn, {
    #js$backgroundCol(input$selector, input$col)
  #})
  
  observeEvent(input$btn, {
    genes_2<-"TEX41\nSSX2IP\nPLSCR5\nSLC14A2\nITPR2\n"
    js$enrich(list=genes_2)
  })
}