# load data 
library(tidyverse)
shelters <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-12-01/shelters.csv')

# remove NAs 
shelters <- shelters %>% drop_na()

# plot occupancy of shelters against capacity 
ggplot(data = shelters) + 
  geom_point(mapping = aes(x = capacity, y = occupancy, 
                           colour = occupancy >= capacity)) +
  geom_abline(slope = 1)

# plot occupancy by shelter sector 
ggplot(data = shelters) + 
  geom_bar(mapping = aes(x = sector, y = occupancy, 
                         colour = occupancy >= capacity), 
           stat = 'identity')
