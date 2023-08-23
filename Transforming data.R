# Create a data frame.
id <-  c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

# Separate names into first and last names.
## Option 1: base R
separate(employee, name, into = c('first name', 'last_name'), sep = ' ')

## Option 2: dplyr
split_name_df <- employee %>% 
  separate(name, c('first_name', 'last_name'))

# Combine first and last names to full names.
## Option 1: base R
unite(split_name_df, 'full_name', first_name, last_name, sep = ' ')

## Option 2: dplyr
full_name_df <- split_name_df %>% 
  unite(full_name, c('first_name', 'last_name'), sep = ' ')

# Create new columns.
## Use `penguins` dataset.
library(palmerpenguins)
data("penguins")

penguins %>% 
  mutate(
    body_mass_kg = body_mass_g/1000,
    flipper_length_m = flipper_length_mm/1000
  )


