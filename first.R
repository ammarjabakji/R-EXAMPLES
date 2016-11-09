# Create a vector containing the follwing numbers 
# 42, 66, 16, 33, 13, 18, 43. 
# What is the average of these numbers?

x = c(42, 66, 16, 33, 13, 18, 43)
mean(x)

# Create a Variable X sequence takes values from 0 to 6 
# Then display X as numaric, character, and logic
x= 0:6
class(x)
as.numeric(x)
as.character(x)
as.logical(x)

# Create a vector from 1 to 100
# What is the Maximum value, the Minimum value,
# the Average, and the Standard Deviation?
 x = c(1:100)
max(x)
min(x)
mean(x)
sd(x)

# Create a matrix 2 by 5 from a vector 1 to 10
# 
m = 1:10 
dim(m) = c(2, 5)
# OR
matrix(1:10, nrow = 2, ncol = 5)
# OR
matrix(m,2,5)

# Create a list 1, "a", TRUE, 1 + 4i 
x = list(1, "a", TRUE, 1 + 4i)
x
############
# Exercises how to download data, read, filter, select, and convert to data frame 
install.packages("downloader")
library(downloader)
install.packages("dplyr")
library(dplyr)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename <- "femaleMiceWeights.csv"
download(url, destfile=filename)
dat <- read.csv(filename)
dat
head(dat)
chow <- filter(dat, Diet=="chow") #keep only the ones with chow diet head(chow)
chow
select(chow,Bodyweight)

# A nicer Pipe feature of the dplyr package. Filter and select in one line.
chowVals <- filter(dat, Diet=="chow") %>% select(Bodyweight)
class( chowVals )
chowVals
class(dat)
# Convert data.frames, into numeric vectors
chowVals <- filter(dat, Diet=="chow") %>% select(Bodyweight) %>% unlist
class( chowVals )
chowVals
class(dat)
class(chowVals)

#Another way without using dplyr package
chowVals = dat[ dat$Diet=="chow", colnames(dat)=="Bodyweight"]
chowVals
############

# Suppose that the data for analysis includes the attribute age. The age
# values for the data are (in increasing order) 13, 15, 16, 16, 19, 20, 20, 21,
# 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70.
# What are the mean and median of the data?
# What is the mode of the data? 
# What is the midrange of the data?
# Find (roughly) the first quartile (Q1) and the third quartile (Q3) of the data.

x= c(13, 15, 16, 16, 19, 20, 20, 21, 22,
     22, 25, 25, 25, 25, 30, 33, 33, 35,
      35, 35, 35, 36, 40, 45, 46, 52, 70)
boxplot(x,las=1,ylab="Age")
quantile(x, probs = c(0.25,0.5,0.75,1))
median(x)


x = c(7.8, 9.5, 17.8, 25.9, 26.5, 27.2, 27.4, 28.8, 30.2,
      31.2, 31.4, 32.9, 33.4, 34.1, 34.6, 35.7, 41.2, 42.5)
boxplot(x,horizontal = TRUE,ylab="Fat")
# Multiply two matrices
 x = matrix(1:4, 2, 2)
 y = matrix(rep(5, 4), 2, 2)
 x %*% y
 