library(shiny)
library(shinyjs)

jsCode <- "shinyjs.pageCol = function(params){$('body').css('background', params);}"
  
shinyUI = fluidPage(
    useShinyjs(),
    extendShinyjs(text = jsCode),
    selectInput("col", "Colour:",
                c("white", "yellow", "red", "blue", "purple"))
)
  
