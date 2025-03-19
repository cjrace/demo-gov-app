# Load packages
library(shiny)

ui <- fluidPage(
  titlePanel("Check your name"),
  textInput("name", "Enter your name:", value = ""),
  textOutput("confirmation")
)

server <- function(input, output) {
  output$confirmation <- renderText({
    paste("My name is", input$name)
  })
}

shinyApp(ui = ui, server = server)
