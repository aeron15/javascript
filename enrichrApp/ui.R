library(shiny)
library(shinyjs)
library(V8)

jsCode <- "scripts/functions_app.js"

shinyUI = fluidPage(
  useShinyjs(),
  extendShinyjs(script = jsCode, functions = "shinyjs.backgroundCol"),
  p(id = "name", "My name is Dean"),
  p(id = "sport", "I like soccer"),
  selectInput("col", "Colour:",
              c("white", "yellow", "red", "blue", "purple")),    
  textInput("selector", "Element", ""),
  actionButton("btn", "Go")
)