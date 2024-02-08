# Working directory
# setwd("~/Desktop/teaching_example")

# Packages
library(ggplot2)

# Function to make plots
function_plot = function(data, xvar, yvar = NULL, plottype, file){

  if(plottype == "scatter"){

    plottitle = paste("Plot of", xvar, "and", yvar)

    p = ggplot(data, aes_string(x = xvar, y = yvar)) +
      geom_point() +
      theme_bw() +
      labs(title = plottitle)

  } else if (plottype == "histogram"){

    # Checks
    if(!is.null(yvar)){
      warning("Only one variable (xvar) is needed if you choose 'histogram'")
    }
    if(length(unique(data[, xvar])) != 2){
      warning("You are not using a binary xvar with 'histogram'")
    }

    plottitle = paste("Plot of", xvar)

    data[, xvar] = factor(data[, xvar])

    p = ggplot(data, aes_string(x = xvar)) +
      geom_bar(stat = "count") +
      theme_bw() +
      labs(title = plottitle)

  } else {stop("You are using a wrong plottype: it must be 'scatter' or 'histogram'")}

  # Save
  ggsave(file, p, width = 5, height = 5)

}

# Load data
df = read.csv("create_data/output/data.csv")

# Produce 2 plots
function_plot(df, xvar = "var2", yvar = "var1", plottype = "scatter",
  file = "plots/output/scatterplot.pdf")
function_plot(df, xvar = "var3", plottype = "histogram",
  file = "plots/output/histogram.pdf")
