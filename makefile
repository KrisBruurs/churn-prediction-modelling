.PHONY: packages download render clean

packages: packages.R
	Rscript packages.R

download: download_data.R
	Rscript download_data.R

render: data/synthetic_customer_behavior_and_churn.csv
	quarto preview exploration_modelling.qmd

remove_data:
	rm -rf data/*
	rm -rf *.html
