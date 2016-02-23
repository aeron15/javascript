server = function(input, output) {
  observe({
    shinyjs::toggleState("submit", !is.null(input$name) && input$name != "")
  })
  
  }
