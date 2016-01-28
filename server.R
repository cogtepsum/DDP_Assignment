library(shiny)

shinyServer(function(input, output) {
        
        library(cluster)
        library(ggplot2)
        
        generateData <- function(nclusters) {
                
                bound <- 2*nclusters
                Xcenters <- runif(nclusters, 
                                  min = -bound, max = bound)
                Ycenters <- runif(nclusters, 
                                  min = -bound, max = bound)
                data <- double()
                
                for(i in 1:nclusters) {
                        X <- rnorm(100, mean = Xcenters[i], 
                                   sd = nclusters*0.5)
                        Y <- rnorm(100, mean = Ycenters[i], 
                                   sd = nclusters*0.5)
                        cluster <- cbind(X, Y)
                        data <- rbind(data, cluster)
                }
                data
        }
        
        data <- reactive({
                generateData(input$trueclst)
        })
        
        clusters <- reactive({
                kmeans(data(), 
                       centers = input$inSlider)$cluster
        })
        
        output$distPlot <- renderPlot({
                c <- clusters()
                
                clusplot(data(), c, color = T, shade = T, sub = NULL)
        })
        
        output$slider <- renderUI({
                sliderInput("inSlider", 
                            label = NULL, min=1, 
                            max=2*input$trueclst, value = 1)
        })
})