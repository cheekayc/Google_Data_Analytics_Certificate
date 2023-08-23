library(Tmisc)
data("quartet")
View(quartet)

# Notice that there is four sets of x and y in the data frame. That is the quartet.
# Obtain a summary of each set with the mean, standard deviation, and correlation for each set.
quartet %>% 
  group_by(set) %>% 
  summarize(
    mean(x),
    sd(x),
    mean(y),
    sd(y),
    cor(x, y)
  )

# Based on the summary, these datasets are identical. However, sometimes just looking at the summarized data can be misleading.
# Create simple graphs to visualize this data and check if the datasets are actually identical.
ggplot(quartet, aes(x, y)) + 
  geom_point() + 
  geom_smooth(method = lm, se = FALSE) + 
  facet_wrap(~set)
## These datasets are actually not identical!


# datasauRus package
## The datasauRus creates plots with the Anscombe data in different shape.
install.packages("datasauRus")
library(datasauRus)

ggplot(datasaurus_dozen, aes(x = x, y = y, colour = dataset)) +
  geom_point() +
  theme_void() +
  theme(legend.position = 'none') + 
  facet_wrap(~dataset, ncol = 3)

