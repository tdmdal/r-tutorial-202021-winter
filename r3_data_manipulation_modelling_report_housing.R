# load the libraries


# specify the dataset url
data_url <- "https://tdmdal.github.io/r-tutorial-202021-winter/data/hprice.csv"

# read the dataset into a dataframe, hprice;
# use the read_csv() function from readr library


# print out the first few rows of the data
# use head()


# summary statistics
# use summary()


# data manipulation using dplyr package

# filter out rows with prices > 95 percentile or < 5 percentile
# use filter() and percent_rank()


# create new variables lprice, lnox, ldist;
# use mutate()


# not necessary for our regression, but just for practice
# let's select only lprice, lnox, ldist, rooms, stratio columns;
# use select()


# can we combine the above three operations? pipe %>%


# three regression models
# 1. simple regression; lm();
# lprice on lnox


# 2. multiple regression; lm()
# lprice on lnox and rooms


# 3. multiple regression with interactive terms; lm()
# lprice on lnox, ldist, rooms, room x room, and stratio


# report regression result;
# summary()


# can we do better;
# huxtable package


