shinyServer(function(input, output) {
  
  
  output$summary <- renderPrint({
    
    # input$file1 will be NULL initially. After the user selects and uploads a file, it will be a data frame
    
    inFile <- input$file1
    
    if (is.null(inFile))
      return(NULL)
    
    csv <- read.csv(inFile$datapath, header=input$header)
       summary(glm(Death~Exposure+Size,data=csv))
  })
  
  output$view <- renderPlot({
    
    # input$file1 will be NULL initially. After the user selects and uploads a  file.
    
    inFile <- input$file1
    
    if (is.null(inFile))
      return(NULL)
    
    csv <- read.csv(inFile$datapath, header=input$header)
    plot(glm(Death~Exposure+Size,data=csv))
  })
  output$coeff<-renderPrint({
    
    # input$file1 will be NULL initially. After the user selects and uploads a  file.
    
    inFile <- input$file1
    
    if (is.null(inFile))
      return(NULL)
    
    csv <- read.csv(inFile$datapath, header=input$header)
    exp((glm(Death~Exposure+Size,data=csv))$coeff)
  })
  
  
  
  
})
