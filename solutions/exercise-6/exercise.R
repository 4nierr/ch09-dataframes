# Exercise 6: Husky Football 2016 Season
# Read in the Husky Football 2016 game data into a variable called `husky.games.2016`
husky.games.2016 <- read.csv('data/huskies_2016.csv')

# Create a vector of the teams that the Huskies played against during that season
# Call this vector `not.huskies`. You'll need to convert this column to a vector
not.huskies <- as.vector(husky.games.2016$opponent)

# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.scores <- husky.games.2016$uw_score

# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards <- husky.games.2016$rushing_yards
passing.yards <- husky.games.2016$passing_yards

# Create a variabled called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- passing.yards + rushing.yards

# What is the score of the game where the Huskies had the most combined yards?
score.with.most.yards <- husky.scores[combined.yards == max(combined.yards)]

## Write a function `MostYardsScore` that takes in a dataframe parameter `games` and returns a descriptive sentence
## about the game that was played that had the most yards scored in it.  
## Include the opposing team, score, and date the game was played in the sentence.
MostYardsScore <- function(games) {

  dates <- as.vector(games$date)
  scores <- games$uw.score
  opponents <- as.vector(games$opponent)

  rushing.yards <- games$rushing.yards
  passing.yards <- games$passing.yards
  combined.yards <- passing.yards + rushing.yards

  most.yards <- max(combined.yards)
  opponent <- opponents[combined.yards == most.yards]
  date <- dates[combined.yards == most.yards]
  highest.score <- scores[combined.yards == most.yards]

  return(paste("The game that the Huskies had the most yards was against", opponent, "on", date, "where they scored", highest.score, "points!"))
}

# What was the highest yardage game so far in 2015 season?
# Hint: Read in the dataset titled `huskies_2015.csv` and save it as a variable
husky.games.2015 <- read.csv('data/huskies_2015.csv')
most.yards.2015 <- MostYardsScore(husky.games.2015)

### Bonus ###
# When working with data, you will often find yourself manually adding data into your dataset.
# This bonus will help you practice such skills.
# Using resources online, find out whether each game was played at home or away.
# Create a vector `where.played` that corresponds to what you found.
# Add the vector `where.played` as a new column to `husky.games.2016`
# Hint: For bowl games simply listing "bowl" will be fine.

where.played <- c("home", "home", "home", "away", "home", "away", "home", "away", "away",
                  "home", "home", "away", "bowl", "bowl")

husky.games.2016$where.played <- where.played
