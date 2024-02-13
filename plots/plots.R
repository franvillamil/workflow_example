# Working directory
# setwd("~/Desktop/workflow_example")

# Packages
library(ggplot2)

# Load data
df = read.csv("create_data/output/data.csv")

# Create scatter plot of two variables
scatter1 = "var1"
scatter2 = "var2"
filename = paste0("scatter_", scatter1, "_", scatter2, ".pdf")
plottitle = paste("Plot of", scatter1, "and", scatter2)

p = ggplot(data, aes_string(x = scatter1, y = scatter2)) +
  geom_bar(stat = "count") +
  theme_bw() +
  labs(title = plottitle)
ggsave(filename, p, width = 5, height = 5)