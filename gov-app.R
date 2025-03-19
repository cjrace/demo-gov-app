# Load packages
library(shiny)
library(shinyGovstyle)

ui <- fluidPage(

  # Header
  shinyGovstyle::header(
    main_text = "",
    secondary_text = "Check your name",
    logo = FALSE,
    logo_alt_text = ""
  ),

  # Gov layout
  shinyGovstyle::gov_main_layout(
    
    # Gov heading
    shinyGovstyle::heading_text("Check your name", "lg"),

    # Gov text input
    shinyGovstyle::text_Input(
      inputId = "name",
      label = "Enter your name",
      hint_label = "Check on your passport or driving licence"
    ),

    shinyGovstyle::gov_text(textOutput("confirmation"))
  ),

  # Gov footer
  shinyGovstyle::footer(TRUE)
)

server <- function(input, output) {
  output$confirmation <- renderText({
    paste("My name is", input$name)
  })
}

shinyApp(ui = ui, server = server)
