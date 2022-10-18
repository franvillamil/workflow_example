all: analyses/output/table_models.tex plots/output/histogram.pdf plots/output/scatterplot.pdf

analyses/output/table_models.tex


plots/output/histogram.pdf


plots/output/scatterplot.pdf:
	Rscript --no-save --verbose $<
