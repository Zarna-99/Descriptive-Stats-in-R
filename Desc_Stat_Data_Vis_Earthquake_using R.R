#loading the dataset
df <- datasets::quakes

#getting initial idea about the dataset by looking at the first and last 10 rows.
head(df,10)
tail(df,10)

#looking for specific rows and columns
df[45:65,c(2:4)]

#creating a new dataframe containing only the specific columns
df2<-df[,-1]
df2


#selecting only a specific columns
df$lat


#descriptive statistics generated for specific columns
summary(df[,2:4])

#descriptive statistics generated for all columns
summary(df)

#getting a more detailed desriptive statistics
#using describe function from "psych" library
#calling the library "psych"
library(psych)
describe(df)     ##psych

#using stat.desc function from "pastecs" library
#calling the library "pastecs"
library(pastecs)
stat.desc(df)    ##pastecs


#data visualiztion
#scaterplot showing relation between two variables
plot(df$lat,df$long,type="p")  ## "p" for points
#lineplot for a single variable 
plot(df$depth,type="l")  ## "l" for line

#scaterplot showing relations between all the variables using scater matrix
plot(df)


#creating plots having labels 
plot(df$lat,xlab="Lat",
     main = "Lat",
     ylab="Values",col="Blue", type='b')

#creating barplot having labels
barplot(df$long,main = "long",
        xlab="long",
        ylab = "Values",col = "black",horiz = F,axes = T)

#visualizing data using histogram
hist(df$mag)
#histogram with labels
hist(df$mag,
     main = "Magnitude",
     xlab = "Mag",col = "orange")

#visualizing data using boxplot
#single boxplot
boxplot(df$depth, main="box plot",col = "purple")
boxplot.stats(df$depth)$out

#multiple boxplot
boxplot(df[,3:5], main="multiple",col = c("purple","blue"))

#density plot
plot(density(df$mag), col='red')

-----------------------
  
#visualizing different plots in a single matrix
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
  
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(df$lat,col = 'black')
plot(df$long, df$mag, col = 'yellow')
plot(df$depth, type= "l", col = 'green')
plot(df$mag, type= "l", col = 'purple')
plot(df$stations, type= "l", col = 'brown')
barplot(df$mag, main = 'Magnitude',
        xlab = 'Mag', col='blue',horiz = TRUE)
hist(df$stations, col = 'red')
boxplot(df$depth, col = 'pink')
boxplot(df[,0:4], main='Multiple Box plots', col = 'orange')


----------------------------------
  