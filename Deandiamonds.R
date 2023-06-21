# Walking down the road I found a diamond and I thought what about the other ones
library(tidyverse)
diamonds |> 
  ggplot()+
  geom_point(mapping = aes(x=carat,y=price,color=cut)) +
  scale_y_continuous(trans = "log10",
                     breaks = seq(1000,10000,1000),
                     labels = c("1k","2k","3k","4k","5K","6k","7k","8k","9k","10k")) + 
  scale_color_manual(values = c("green","yellow","orange","red","purple","blue"))+
  labs(x = "Carat (weight)",
       y = "Price (USD)",
       color = "Cut Quality",
       title = "I can afford all of these",
       subtitle = "because I have Carissa's credit card")
