elevation.data <- read.csv("./elevation.extremes.csv")
head(elevation.data)
ggplot(elevation.data) +
  theme_classic(18) +
  geom_point(aes(x = max, y = min)) +
  annotate("segment", x = 2500, xend = 3400, y = 1400, yend = 1400, colour = "black", size=0.1, alpha=1, arrow=arrow())
ggplot(elevation.data) +
  theme_classic(18) +
  geom_point(aes(x = max, y = min)) +
  geom_text(aes(label=country, x = max, y = min),hjust=0, vjust=0, size = 3)
ggplot(elevation.data) +
  theme_classic(18) +
  geom_point(aes(x = max-min, y = max)) +
  geom_abline(intercept = 0, slope = 1)