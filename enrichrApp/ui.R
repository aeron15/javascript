library(shiny)
library(shinyjs)
library(V8)

jsCode <- "scripts/functions_app.js"

shinyUI = fluidPage(
  useShinyjs(),
  extendShinyjs(script = jsCode, functions = "shinyjs.enrich"),
  #p(id = "genes_2", "TEX41\nSSX2IP\nPLSCR5\nSLC14A2\nITPR2\n"),
  #p(id = "sport", "I like soccer"),
  #selectInput("col", "Colour:",
  #            c("white", "yellow", "red", "blue", "purple")),    
  #textInput("selector", "Element", ""),
  actionButton("btn", "Go")
)