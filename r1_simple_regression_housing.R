# 1. Data Import & Manipulation

# load data
# This is a dataset on housing prices and air pollution from Harrison & Rubinfeld (1978).
# https://www.sciencedirect.com/science/article/pii/0095069678900062
# The dataset is also used throughout Wooldridge's text book: Introductory Econometrics: A Modern Approach.
data_url <- "https://tdmdal.github.io/r-tutorial-202021-winter/data/hprice.csv"
hprice <- read.csv(data_url)

# take a look at the structure of the data
# http://fmwww.bc.edu/ec-p/data/wooldridge/hprice2.des
str(hprice)

# print the first few rows of the dataset
head(hprice)

# create log price and log nox
hprice["lprice"] <- log(hprice["price"])
hprice["lnox"] <- log(hprice["nox"])


# 2. Modelling

# setup a regression model
lr <- lm(formula = lprice ~ lnox, data = hprice)


# 3. Report and Graph

# report regression result
summary(lr)

# plot data and regression line
par(mfrow = c(1, 1))
plot(hprice[c("lnox", "lprice")])
abline(coef(lr))

# plot a few other things
par(mfrow = c(2, 2))
plot(lr)

