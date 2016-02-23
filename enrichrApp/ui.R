library(shiny)
library(shinyjs)
library(V8)

#jsCode <- "scripts/functions_app.js"
jsCode <- "scripts/functions_app_2.js"
shinyUI = fluidPage(
  useShinyjs(),
  extendShinyjs(script = jsCode, functions = "shinyjs.enrich"),
  actionButton("btn", "Go")
)