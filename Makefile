all: create_data/output/data.csv analyses/output/table_models.tex plots/output/scatter.pdf

create_data/output/data.csv: create_data/data.R
	Rscript --no-save --verbose create_data/data.R

analyses/output/table_models.tex: analyses/analyze.R create_data/output/data.csv
	Rscript --no-save --verbose analyses/analyze.R

plots/output/scatter.pdf: plots/plots.R create_data/output/data.csv
	Rscript --no-save --verbose plots/plots.R
# 	Rscript --no-save --verbose $<