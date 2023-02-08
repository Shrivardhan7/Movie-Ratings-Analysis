getwd()
movies <- read.csv("movie ratings.csv")
head(movies)
colnames(movies) <- c("film", "genre", "criticrating", "audiencerating", "budgetmillions", "year")
head(movies)
tail(movies)
summary(movies)
str(movies)
summary(movies)

library(ggplot2)

ggplot(data = movies, aes(x=criticrating, y=audiencerating, colour=genre)) + 
  geom_point()

w <- ggplot(data = movies, aes(x=criticrating, y=audiencerating, colour=genre))

w + geom_point(size=2)

w + geom_point(size=2) + facet_grid(genre~.)

w + geom_point(size=2) + facet_grid(.~year)

w + geom_point(aes(size=budgetmillions)) + geom_smooth() + facet_grid(genre~year)
