# ggplot_demo.R
# A minimal, clean plot ready for portfolio use

library(ggplot2)
library(readr)
df <- readr::read_csv(file.path("..","data","example.csv"))

p <- ggplot(df, aes(year, value, color = group)) +
  geom_line() +
  geom_point() +
  labs(title = "Example Time Series", x = NULL, y = "Value") +
  theme_minimal()

ggsave("ggplot_demo.png", p, width = 7, height = 4.2, dpi = 300)
print(p)
