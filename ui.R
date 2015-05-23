shinyUI(pageWithSidebar(
  headerPanel("Automobile Accident Mortality by Car Size"),
  sidebarPanel(
    fileInput('file1', 'Choose CSV File',
              accept=c('text/csv', 'text/comma-separated-values,text/plain', '.csv')),
    tags$hr(), 
    checkboxInput('header', 'Header'),
    helpText("If the file has a header row check box"),
    helpText("Data from http://www.iihs.org/iihs/topics/driver-death-rates was processed into several csv files based on whether the outcome was overall mortality, death in single or multi vehicle crash or death from a rollover. Pick the appropriate file. As the file has a header check the box above. The analysis will run and the output for the model and coefficients along with a diagnostic plot will display")
    
     #         accept=c('text/csv', 'text/comma-separated-values,text/plain', '.csv')),
    #tags$hr(),
    #checkboxInput('header', 'Header')
   
   )
  ,
  # mainPanel(
  # tableOutput('contents')
  #)
  
  mainPanel(
    verbatimTextOutput("summary"),
    verbatimTextOutput("coeff"),
    
    
    plotOutput("view")
  )
))
