all: analyses/output/table_models.tex plots/output/histogram.pdf plots/output/scatterplot.pdf

analyses/output/table_models.tex: analyses/analyze.R create_data/output/data.csv
	Rscript --no-save --verbose $<

plots/output/histogram.pdf: plots/plots.R create_data/output/data.csv
	Rscript --no-save --verbose $<

plots/output/scatterplot.pdf: plots/plots.R create_data/output/data.csv
	Rscript --no-save --verbose $<
