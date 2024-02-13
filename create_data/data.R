# Working directory
# setwd("~/Desktop/workflow_example")

# Constants: always define them once only
n_obs = 1000

# Create data
df = data.frame(
  var1 = rnorm(n = n_obs, mean = 5, sd = 2),
  var2 = rnorm(n = n_obs, mean = 300, sd = 50),
  var3 = rbinom(n = n_obs, size = 1, prob = 0.2)
)

# Save data
write.csv(df, "create_data/output/data.csv")
