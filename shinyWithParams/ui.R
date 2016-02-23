library(shiny)
library(shinyjs)
library(V8)

jsCode <- '
shinyjs.backgroundCol = function(params) {
var defaultParams = {
id : null,
col : "red"
};
params = shinyjs.getParams(params, defaultParams);

var el = $("#" + params.id);
el.css("background-color", params.col);
}'

  shinyUI = fluidPage(
    useShinyjs(),
    extendShinyjs(text = jsCode),
    p(id = "name", "My name is Dean"),
    p(id = "sport", "I like soccer"),
    selectInput("col", "Colour:",
                c("white", "yellow", "red", "blue", "purple")),    
    textInput("selector", "Element", ""),
    actionButton("btn", "Go")
)