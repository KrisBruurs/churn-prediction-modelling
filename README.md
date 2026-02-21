
# Customer Churn Prediction Modeling

This portfolio project builds and compares churn prediction models on a simulated customer dataset. It walks through exploration, preparation, modeling, and evaluation, then connects the results to clear, actionable business recommendations in a polished Quarto report.

## Project Highlights

- Reproducible workflow from data loading to insights
- Two model families: logistic regression and decision tree
- Metrics-driven evaluation with clear interpretation
- Quarto report with custom styling

## Project Structure

- [exploration_modelling.qmd](exploration_modelling.qmd): main Quarto report
- [packages.R](packages.R): R package installation
- [download_data.R](download_data.R): dataset download via Kaggle CLI
- [makefile](makefile): automation targets
- [styles.css](styles.css): custom report styling
- data/: dataset location

## Requirements

- R (4.x recommended)
- Quarto CLI
- Kaggle CLI (for automated download)

Optional (if you use Make on Windows): GNU Make available on PATH (e.g., Git Bash, MSYS2, or RTools).

## Quick Start (Manual)

1. Install packages:

```bash
Rscript packages.R
```

2. Download the dataset (requires Kaggle CLI credentials):

```bash
Rscript download_data.R
```

3. Render the report:

```bash
quarto preview exploration_modelling.qmd
```

## Automated Workflow (Makefile)

If Make is available, you can run the full workflow with:

```bash
make packages
make download
make render
```

Make targets:

- `make packages`: install required R packages
- `make download`: download and unzip the dataset into `data/`
- `make render`: run the Quarto preview for the report
- `make remove_data`: remove downloaded data and HTML outputs


## Output

The rendered HTML report includes all analysis, charts, and business recommendations.
