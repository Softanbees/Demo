


hidden(fluidRow(
  id = "main",
  column(
    12,
    tags$button(
      id = "submit_sign_out",
      type = "button",
      "Sign Out",
      class = "btn-danger pull-right",
      style = "color: white;"
    )
  ),
#  column(
#    12,
#    div(
#      style = "padding: 50px",
#      h1("You and now signed in and your email address has been verified!"),
#      br(),
#      br(),
#      h3("This is all the information that comes with the signed in user with 'Email/Password' authentication on Firebase"),

 #################  UI start here 
      
      # Define UI for dataset viewer app ----
      ui <- fluidPage(
        
        # App title ----
        titlePanel("Shiny Text"),
        
        # Sidebar layout with a input and output definitions ----
        sidebarLayout(
          
          # Sidebar panel for inputs ----
          sidebarPanel(
            
            # Input: Selector for choosing dataset ----
            selectInput(inputId = "dataset",
                        label = "Choose a dataset:",
                        choices = c("rock", "pressure", "cars")),
            
            # Input: Numeric entry for number of obs to view ----
            numericInput(inputId = "obs",
                         label = "Number of observations to view:",
                         value = 10)
          ),
          
          # Main panel for displaying outputs ----
          mainPanel(
            
            # Output: Verbatim text for data summary ----
            verbatimTextOutput("summary"),
            
            # Output: HTML table with requested number of observations ----
            tableOutput("view")
            
          )
        )
      )
 ##############ui finish here     
      
      
    )
  )

