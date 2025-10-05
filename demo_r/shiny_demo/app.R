# demo_r/shiny_demo/app.R
# Minimal Shiny app to show interactivity

library(shiny)
library(readr)
library(ggplot2)
library(plotly)

df <- readr::read_csv(file.path("..","data","example.csv"))

ui <- fluidPage(
  titlePanel("Shiny Demo — Interactive Time Series"),
  sidebarLayout(
    sidebarPanel(
      selectInput("group", "Choose group:", choices = unique(df$group))
    ),
    mainPanel(
      plotlyOutput("plot")
    )
  )
)

server <- function(input, output, session){
  output$plot <- renderPlotly({
    d <- subset(df, group == input$group)
    p <- ggplot(d, aes(year, value)) +
      geom_line() + geom_point() +
      labs(x = NULL, y = "Value", title = paste("Group:", input$group)) +
      theme_minimal()
    ggplotly(p)
  })
}

shinyApp(ui, server)
