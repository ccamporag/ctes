library(shiny)
library(shinydashboard)
library(DBI)
library(pool)
library(glue)
library(RMariaDB)
library(dplyr)

header <- function(){
  
  dashboardHeader(title = div( id="titulo_app",tags$img(src="www/logo_ctes.png", height = 45, width = 130)))
  
}

sidebar <- function(){
  
  dashboardSidebar()
  
}

body <- function(){
  
  dashboardBody(
    
    useShinyjs(),
    
    
    
    tags$head(tags$style(HTML('
                          /* logo */
                          .skin-blue .main-header .logo {
                          background-color: rgb(255,255,255); color:        rgb(0,144,197);
                          font-weight: bold;font-size: 24px;text-align: center;
                          }

                          /* logo when hovered */

                          .skin-blue .main-header .logo:hover {
                          background-color: rgb(255,255,255);
                          }


                          /* navbar (rest of the header) */
                          .skin-blue .main-header .navbar {
                          background-color: rgb(255,255,255);
                          }

                          /* main sidebar */
                          .skin-blue .main-sidebar {
                          background-color: #012842;;
                          }

                          # /* main body */
                          # .skin-blue .main-body {
                          # background-color: rgb(255,255,255);
                          # }

                          /* active selected tab in the sidebarmenu */
                          .skin-blue .main-sidebar .sidebar .sidebar-menu .active a{
                          background-color: steelblue;
                          color: rgb(255,255,255);font-weight: bold;font-size: 18px;
                          }

                          /* other links in the sidebarmenu */
                          .skin-blue .main-sidebar .sidebar .sidebar-menu a{
                          background-color: #012842;
                          color: rgb(255,255,255);font-weight: bold;
                          }

                          /* other links in the sidebarmenu when hovered */
                          .skin-blue .main-sidebar .sidebar .sidebar-menu a:hover{
                          background-color: rgb(232,245,251);color: rgb(0,144,197);font-weight: bold;
                          }

                          /* toggle button color  */
                          .skin-blue .main-header .navbar .sidebar-toggle{
                          background-color: rgb(255,255,255);color:rgb(0,144,197);
                          }

                          /* toggle button when hovered  */
                          .skin-blue .main-header .navbar .sidebar-toggle:hover{
                          background-color: rgb(0,144,197);color:rgb(255,255,255);
                          }

#                           ')))
    
  )
  
}

ui <- dashboardPage(
  header = header(),
  sidebar = sidebar(),
  body = body()
  
)

server <- function(input,output,session){
  
}

shinyApp(ui,server)
