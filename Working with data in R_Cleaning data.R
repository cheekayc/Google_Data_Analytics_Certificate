# Arrange dataset in descending order.
## Option 1:
penguins %>% 
  arrange(-bill_length_mm)

## Option 2:
penguins %>% 
  arrange(desc(bill_length_mm))

# Organize dataset by species and island with maximum and average bill length.
penguins %>% 
  group_by(species, island) %>%
  drop_na() %>% 
  summarize(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))

