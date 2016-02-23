library(shiny)
library(shinyjs)

shinyUI = fluidPage(
    useShinyjs(),
    div(id = "myapp",
        h2("shinyjs demo"),
        textInput("name", "Name", ""),
        numericInput("age", "Age", 30),
        textInput("company", "Company", ""),
        p("Timestamp: ", span(date())),
        actionButton("submit", "Submit")
    )

)
