library(tidyverse)

# load data on elevation extremes per country
elevation.data <- read_csv("./elevation.extremes.csv")

# which country has teh highest minimum elevation point?
ggplot(elevation.data) +
  theme_classic(18) +
  geom_point(aes(x = max, y = min)) +
  annotate("segment", x = 2500, xend = 3400, y = 1400, yend = 1400, colour = "black", size=0.2, alpha=2, arrow=arrow()) +
  annotate(geom="text", x=4634, y=250, label="CH", color="red") + # Switzerland marked for reference
  annotate(geom="text", y=1470, x=3482, label="?", color="red") +
 labs(x = "Maximum elevation (MASL)", y = "Minimum elevation (MASL)")

# reveal answers
ggplot(elevation.data) +
  theme_classic(18) +
  geom_point(aes(x = max, y = min)) +
  geom_text(aes(label=country, x = max, y = min),hjust=-0.1, vjust=0, size = 3)
