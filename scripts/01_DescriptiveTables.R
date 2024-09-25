library(tidyverse)
library(gtsummary)
library(easystats)
library(gt)

# read data 
data <- readxl::read_excel("raw_data/AMR_KAP_No_Code.xlsx", sheet = 1)


# Demographic characteristics of study participants 
data |> 
  select(1:11) |> 
  tbl_summary() |> 
  as_gt() |> 
  gtsave("tables/Table1_Demographics.docx")


# read data sheet2 
data2 <- readxl::read_excel("raw_data/AMR_KAP_No_Code.xlsx", sheet = 2)

# Impact of education on level of knowledge of antibiotics 

y = mx + c

model <- lm(TotalKnowledgeScore ~ `Parent’s education level`, data = data2)

summary(model)

report(model)


