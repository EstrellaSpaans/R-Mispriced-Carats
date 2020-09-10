
# First, we have to read the file to use it.
mydata <- read.csv(file.choose())

#the data means the following: diamonds with v in it are the best quality.
# l is the lowest quality and S is medium quality. 

# Install the package called ggplot2, system for declaratively creating graphics.
install.packages("ggplot2")

# Then we visualize the data in a scatterplot.
ggplot(data=mydata,
       aes(x=carat, y=price)) + 
  geom_point()

# Let's customize it a bit more by showing relevent data only, make it transparent, and add average lines. 
ggplot(data=mydata[mydata$carat<2.5,],
       aes(x=carat, y=price, color = clarity)) + 
  geom_point(alpha =0.1) +
  geom_smooth()

# Insight 1:the lins are in the right order as well as the pricing.
# Insight 2:some of the lines are crossing in the beginning and in the right top. 
# Insight 3: not all carats are sold at the right price point. 
# Insight 4: The vertizal lines show that most carats are sold at fixed price points. 
