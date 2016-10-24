#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Loading Necessary Files
library(shiny)
data <- read.csv('advertising.csv', header = TRUE)
data$X <- NULL

# Define UI for application that draws a histogram
ui <- shinyUI(fluidPage(
   
   # Application title
   titlePanel("Advertising Method Scatterplots"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
        selectInput("category", "Advertising Method:", 
        choices = c("TV", "Radio", "Newspaper"))
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
         plotOutput("sales_scatter")
      )
   )
))

# Define server logic required to draw a histogram
server <- shinyServer(function(input, output) {
  ad_sales <- reactive({data[ ,c(input$category, "Sales")]
    })
  
   output$sales_scatter <- renderPlot({
     plot(ad_sales(), col = '#0d087e', main = 'Sales Scatterplot')
   })
})

# Run the application 
shinyApp(ui = ui, server = server)


