# INSTALL LIBRARY
library(robotstxt)
library(rvest)

# CHECK WHETHER THE WEBSITE IS ALLOWED TO SCRAP
Path  = paths_allowed("https://www.imdb.com/chart/top/")

# ASSIGN THE WEBSITE TO A VARIABLE
url <- "https://www.imdb.com/chart/top/"

# READ THE HTML PART OF THE URL
my_html <- read_html(url)

# SEGREGATE THE HTML NODES, GET THE TABLES AND SASSIGN THEM TO A VARIABLE
my_tables <- html_nodes(my_html, "table")

# TAKE THE FIRST TABLE AND ASSIGN THEM TO A SEPERATE VARIUABLE

movie_table <- html_table(my_tables)[[1]]

# VIEW THYE TABLE
View(movie_table)

# TAKE ONLY THE SECOND AND THIRD COLUMN FROM THE TABLE
movies <- movie_table[,2:3]

# VIEW THE TABLE
View(movies)

# CHECK FOR DATABASES
str(movies)

#EXPORT THE TABLE TO A CSV FILE IN THE COMPUTER
write.csv(movies, "My_movies.csv")