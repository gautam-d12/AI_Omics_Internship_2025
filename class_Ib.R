getwd()

# Creating subfolders -------------------

dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results")  # or"Tasks" 
dir.create("plots")

# Importing CSV file --------------------------
data <- read.csv(file.choose())

# View ------------------------------------

View(data)
str(data)           # Structure
summary(data)       # Summary stats
head(data)          # Preview first few rows
sapply(data, class) # Checking data types of all columns

# Checking for inconsistent data types --------------------

# age should be numberic
data$age_num <- as.numeric(data$age)

# gender should be a factor
data$gender_fac <- as.factor(data$gender)

# dignoisis should be a factor
data$diagnosis_fac <- as.factor(data$diagnosis)

# bmi should be numberic
data$bmi_num <- as.numeric(data$bmi)

# Smoker should be a factor
data$smoker_fac <- as.factor(data$smoker)

# Creating a new variable for smoking status as a binary factor:

# 1 for "Yes", 0 for "No"

data$smoker_fac <- ifelse(data$smoker_fac == "Yes" , 1, 0)

# Saving the Cleaned Data
write.csv(data, "clean_data/patient_info_clean2.csv")