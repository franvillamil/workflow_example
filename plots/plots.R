# Working directory
# setwd("~/Desktop/workflow_example")

# Packages
library(ggplot2)

# Load data
df = read.csv("create_data/output/data.csv")

# Create scatter plot of two variables
scatter1 = "var1"
scatter2 = "var3"
plottitle = paste("Plot of", scatter1, "and", scatter2)

p = ggplot(df, aes(x = !!sym(scatter1), y = !!sym(scatter2))) +
  geom_point() +
  theme_bw() +
  labs(title = plottitle)
ggsave("plots/output/scatter.pdf", p, width = 5, height = 5)