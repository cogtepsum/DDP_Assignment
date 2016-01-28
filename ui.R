library(shiny)

shinyUI(fluidPage(
        
        titlePanel("Example of KMeans Clustering"),
        
        sidebarLayout(
                sidebarPanel(
                        h3("True clusters"),
                        helpText("Choose a number of cluster centers 
                                 that will be used for generating data"),
                        numericInput("trueclst",
                                     label = NULL,
                                     value = 2, min = 2),
                        
                        h3("Desirable clusters"),
                        helpText("Choose a number of clusters 
                                 you want to see on the plot"),
                        uiOutput("slider")
                ),
                
                mainPanel(
                        plotOutput("distPlot")
                )
        )
))