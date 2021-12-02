elevation.data <- read.csv("./elevation.extremes.csv")
library(tidyverse)
head(elevation.data)
ggplot(elevation.data) +
  theme_classic(18) +
  geom_point(aes(x = max, y = min)) +
  annotate("segment", x = 2500, xend = 3400, y = 1400, yend = 1400, colour = "black", size=0.2, alpha=2, arrow=arrow()) +
  annotate(geom="text", x=4634, y=250, label="CH",
           color="red") +
  annotate(geom="text", y=1470, x=3482, label="?",
           color="red") +
 labs(x = "Maximum elevation (MASL)", y = "Minimum elevation (MASL)")
ggplot(elevation.data) +
  theme_classic(18) +
  geom_point(aes(x = max, y = min)) +
  geom_text(aes(label=country, x = Maximum elevation, y = min),hjust=0, vjust=0, size = 3)
ggplot(elevation.data) +
  theme_classic(18) +
  geom_point(aes(x = max-min, y = max)) +
  geom_abline(intercept = 0, slope = 1)