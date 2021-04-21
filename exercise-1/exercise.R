### -------------------- Exercise 1: Creating data frames --------------------

## Create a vector of the number of points the Seahawks scored in the first 5 games
## Hint: google "Seahawks scores", or check the football database:
## http://www.footballdb.com/teams/nfl/seattle-seahawks/results
## here 'Result' displays scores, 'L' stands for loss, 'W' for win
## 
## Hint: feel free to invent if you cannot figure this out

pointsBySeahawks <- c(38,35,38,31,27)

## Create a vector of the number of points the Seahawks have allowed to be
## scored against them in the first 5 games

pointsAllowed <- c(25,30,31,23,26)

## Combine your two vectors into a dataframe

results <- data.frame(pointsBySeahawks,pointsAllowed)

## Create a new column "diff" that is the difference in points

results$diff <- c(abs(results$pointsBySeahawks-results$pointsAllowed))
results

## Create a new column "won" which is TRUE if the Seahawks won

results$won <- results$pointsBySeahawks > results$pointsAllowed
results

## Create a vector of the opponents name (such as "Atlanta Falcons")

opponentsName <- c("Atlanta", "New England", "Dallas", "Miami", "Minnesota")

## Add the vector of opponents into the data frame

results$opponent <- opponentsName
results
