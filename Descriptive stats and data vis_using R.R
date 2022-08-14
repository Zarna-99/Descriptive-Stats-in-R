#loading the dataset
airquality<-datasets::airquality

#getting initial idea about the dataset by looking at the first and last 5 rows.
head(airquality,5)
tail(airquality,5)

#looking for specific rows and columns
airquality[50:70,c(1:3)]

#creating a new dataframe containing only the specific columns
df2<-airquality[,-5]
df2


#selecting only a specific column
airquality$Ozone


#descriptive statistics generated for specific columns
summary(airquality[,2:4])

#descriptive statistics generated for all columns
summary(airquality)

#getting a more detailed desriptive statistics
#using describe function from "psych" library
#calling the library "psych"
library(psych)
describe(airquality)     ##psych

#using stat.desc function from "pastecs" library
#calling the library "pastecs"
library(pastecs)
stat.desc(airquality)    ##pastecs


#data visualiztion
#scaterplot showing relation between temp and wind
plot(airquality$Temp,airquality$Wind,type="p")  ## "p" for points
#lineplot for the variable wind
plot(airquality$Wind,type="l")  ## "l" for line

#scaterplot showing relations between all the variables using scater matrix
plot(airquality)


#creating plots having labels 
plot(airquality$Wind,xlab="ozon concerntration",
     main = "ozon level in the city",
     ylab="no of instances",col="Blue", type='l')

#creating barplot having labels
barplot(airquality$Ozone,main = "ozon concerntration in air",
        xlab="ozon concerntration",
        ylab = "no of instances",col = "blue",horiz = F,axes = T)

#visualizing data using histogram
hist(airquality$Temp)
#histogram with labels
hist(airquality$Temp,
     main = "solar radiation value in air",
     xlab = "solar red.",col = "orange")

#visualizing data using boxplot
#single boxplot
boxplot(airquality$Wind, main="box plot",col = "purple")
boxplot.stats(airquality$Wind)$out

#multiple boxplot
boxplot(airquality[,1:2], main="multiple",col = c("purple","blue"))

#density plot
plot(density(airquality$Wind), col='red')

-----------------------

#visualizing different plots in a single matrix
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
  
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(airquality$Ozone,col = 'black')
plot(airquality$Ozone, airquality$Wind, col = 'yellow')
plot(airquality$Solar.R, type= "l", col = 'green')
plot(airquality$Wind, type= "l", col = 'purple')
plot(airquality$Temp, type= "l", col = 'brown')
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='blue',horiz = TRUE)
hist(airquality$Solar.R, col = 'red')
boxplot(airquality$Solar.R, col = 'pink')
boxplot(airquality[,0:4], main='Multiple Box plots', col = 'orange')


----------------------------------

  



