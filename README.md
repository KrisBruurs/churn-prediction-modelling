
# Customer Churn Prediction Modeling

This portfolio project builds and compares churn prediction models on a simulated customer dataset. The analysis focuses on model performance, key churn drivers, and practical business recommendations, presented in a polished Quarto report.

## Project Highlights

- End-to-end workflow: data loading, exploration, preparation, modeling, evaluation, and insights
- Two model families: logistic regression and decision tree
- Business-focused interpretation and recommendations
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

## Notes

- The Kaggle CLI requires an API token. Follow Kaggle setup instructions and place `kaggle.json` in your user profile as required by the CLI.
- If `make render` fails with a Quarto not found error, ensure the Quarto CLI is installed and on PATH.

## Output

The rendered HTML report includes all analysis, charts, and business recommendations.
