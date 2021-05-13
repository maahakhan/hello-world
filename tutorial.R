install.packages("tidyverse")
library(tidyverse)

# creating a ggplot
ggplot(data=mpg) 
  + geom_point(mapping=aes(x=displ, y=hwy))

# aesthetic mappings - with colour
ggplot(data=mpg) 
  + geom_point(mapping=aes(x=displ, y=hwy, color=class))

# aesthetic mappings - size
ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ, y=hwy, size=class))

# aesthetic mappings - alpha(transparency)
ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ, y=hwy, alpha=class))

# aesthetic mappings - shapes
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

# aesthetic mappings - blue points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

# facets - 2 rows
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)
