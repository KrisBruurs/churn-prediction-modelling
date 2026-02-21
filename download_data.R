# Create data folder
dir.create("data", showWarnings = FALSE)

# Download dataset
system('kaggle datasets download -d theaimindset/customer-behavior-and-churn-simulation-dataset')

# Unzip it
unzip('customer-behavior-and-churn-simulation-dataset.zip', exdir = 'data')

# Remove zipfile from repository
file.remove('customer-behavior-and-churn-simulation-dataset.zip')

