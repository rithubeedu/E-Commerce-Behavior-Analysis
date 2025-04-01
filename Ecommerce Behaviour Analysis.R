
# Load Data
ecomm.df <- read.csv("~/Downloads/ecommerce-data-2.csv")

# Q1. How many observations and variables are in the dataset?
dim(ecomm.df)

# Q2. Frequency table for country of origin
table(ecomm.df$country)

# Q3. Two-way frequency table for intent to purchase vs profile
table(ecomm.df$intentWasPlanningToBuy, ecomm.df$profile)

# Q4. Proportion of parents who intended to purchase (excluding blanks)
intent.tab <- table(ecomm.df$intentWasPlanningToBuy, ecomm.df$profile)
intent.tab[2:4, 5] / sum(intent.tab[2:4, 5])        # Parents

# Proportion of teachers who intended to purchase
intent.tab[2:4, 8] / sum(intent.tab[2:4, 8])        # Teachers

# Q5. State with most visitors (region)
table(ecomm.df$region)
max(table(ecomm.df$region))  # 94 (TX)

# Q6. Which state had the most visitors using which.max()
state.tab <- table(ecomm.df$region)
state.tab[which.max(state.tab)]

# Q7. Histogram of site visits with density line
hist(ecomm.df$behavNumVisits, breaks = 200, col="lightgreen", freq = FALSE,
     main = "Histogram of Site Visits", xlab = "Number of Visits")
lines(density(ecomm.df$behavNumVisits), col="red")

# Q8. Horizontal boxplot of site visits
boxplot(ecomm.df$behavNumVisits, horizontal = TRUE, main = "Number of Visits to the Site")

# Q9. Boxplot of site visits by profile (horizontal, with spacing fix)
par(mar = c(3, 12, 2, 2))
boxplot(ecomm.df$behavNumVisits ~ ecomm.df$profile, las = 1,
        horizontal = TRUE, main = "Site Visits by User Profile")
par(mar = c(5, 4, 4, 2) + 0.1)  # reset margins
