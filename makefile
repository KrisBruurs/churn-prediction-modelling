.PHONY: packages download render clean

packages: packages.R
	Rscript packages.R

download: download_data.R
	Rscript download_data.R

render: data/synthetic_customer_behavior_and_churn.csv
	quarto render exploration_modelling.qmd

clean:
	rm -rf data/*