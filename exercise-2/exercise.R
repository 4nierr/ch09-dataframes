# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100")

employees <- paste("Employee", 1:100)

## Create a random vector of 2014 salaries.
## Hint: you may use the runif function to create uniform random numbers,
## e.g. runif(100, 50, 100) creates 100 random numbers between 50 and 100

salaries2014 <- runif(100,50000,100000)

## Create a vector of 2015 salaries that are typically higher than the 2014
## salaires (use runif again).
## 
## Hint: you can either multiply random numbers by a number (> 1), or add
## a positive number.
## However, please ensure the 2015 results include both larger and smaller numbers than
## 2014 results.

salaries2015 <- salaries2014 + runif(100, -5000, 10000)

## Create a data.frame 'salaries' by combining the vectors you just made

salaries <- data.frame(employees,salaries2014,salaries2015)

## Create a column 'raise' that stores the size of the raise between 2014 and 2015

salaries$raise <- salaries$salaries2015 - salaries$salaries2014

## Create a column 'got.raise' that is TRUE if the person got a raise

salaries$got.raise <- salaries$salaries2015 > salaries$salaries2014
salaries

## Retrieve values from your data frame to answer the following questions:
##
## What was the 2015 salary of employee 57

cat("the pay of employee 57 was",salaries$salaries2015[57])

## How many employees got a raise?



## What was the value of the highest raise?


## What was the name of the employee who recieved the highest raise?


## What was the largest decrease in salaries between the two years?


## What was the name of the employee who recieved largest decrease in salary?


## What was the average salary increase?


### Bonus ###

## Write a .csv file of your salaries to your working directory


## For people who did not get a raise, how much money did they lose?


## Is that what you expected them to lose?


### Double Bonus (no answer given) ###

## Repeat the above experiment 100 times, tracking the loss each time.
## Does the average loss equal what you expect?
## What about 10,000 times?
