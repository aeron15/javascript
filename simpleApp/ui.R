library(shiny)
library(shinyjs)

shinyUI <- fluidPage(
  useShinyjs(),
  actionButton("button", "Click me"),
  div(id = "hello", "Hello!")
)

