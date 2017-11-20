Body Mass Calculator
========================================================
author: Kenneth Ip
date: November 19th 2017
autosize: true

Developing Data Products Course Project

Overview
========================================================

The application developed is a Body Mass Index (BMI) calculator. This application takes the weight (lb) and height (in) of person as input and displays the BMI of the user and categorizes that person as underweight, normal weight, overweight, or obese. 
Please click on the link below to try the application out for yourself!

[BMI Calculator](https://kip4good.shinyapps.io/bmi_calculator/)

Calculations
========================================================

As you move the input sliders to your weight and height, your BMI is calculated from the following code:


```r
bmi = round((input$weight/(input$height)^2)*703, 1)
```

The code below creates a plot showing where the user lies in terms of the BMI scale. The green section is considered normal.


```r
data<-matrix(c(15, 1, 2.5 ,6.5 , 5, 5, 5), ncol = 1, nrow = 7)
barplot(data, horiz = TRUE, yaxt="n", xlab = "BMI", main="Your BMI", col=c("darkred", "red", "orange", "green", "orange", "red", "darkred", "brown"))
    lines(x=c(bmi, bmi), y=c(0,1.2), col="blue", lwd=4)
```

Visual Plot
========================================================

The example below is of a person with a BMI score of 22, which falls in the normal (green) category.

![plot of chunk unnamed-chunk-3](Body Mass Calculator-figure/unnamed-chunk-3-1.png)

Application Links
========================================================

* Test out the application on the RStudio chinyapps.io website
[https://kip4good.shinyapps.io/bmi_calculator/](https://kip4good.shinyapps.io/bmi_calculator/)
* To see the code for the application, please visit the github page
[https://github.com/Kip4Good/bmi](https://github.com/Kip4Good/bmi)

