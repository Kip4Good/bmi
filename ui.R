#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(fluidPage(
  titlePanel("Body Mass Index (BMI) Calculator"),
  sidebarLayout(sidebarPanel(
    helpText("The body mass index (BMI) calculator. Input your height and weight."),
    sliderInput(
      inputId = "height",
      label = strong("Your height in inches:"),
      min = 40,
      max = 90,
      value = 69
    ), #User height input slider
    sliderInput(
      inputId = "weight",
      label = strong("Your weight in pounds:"),
      min = 50,
      max = 400,
      value = 195
    ), #User mass input slider
    h5("The Body mass index (BMI) is a measure of body fat based on height and weight")
  ),
  
  mainPanel(
    uiOutput("user_data"), #Text with the user data
    plotOutput("plot", height = "175px", width = "100%"), #Colorful plot of the user BMI
    uiOutput("results") #Text results
  ))
))