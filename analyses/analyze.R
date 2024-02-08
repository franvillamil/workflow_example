# Working directory
# setwd("~/Desktop/teaching_example")

# Packages
library(modelsummary)
library(kableExtra)

# Load data
df = read.csv("create_data/output/data.csv")

# Models
m1 = lm(var1 ~ var2, data = df)
m2 = lm(var1 ~ var2 + var3, data = df)
model_list = list(m1, m2)

# Model summary stuff
coef_recode = c(
  'var1' = 'Variable 1',
  'var2' = 'Variable 2',
  'var3' = 'Variable 3'
)

# Model table
modelsummary(
  models = model_list,
  output = "latex",
  estimate = "{estimate}{stars}",
  coef_map = coef_recode) %>%
save_kable(file = "analyses/output/table_models.tex")
