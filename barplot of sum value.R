#Side-by-Side barplot to represent the sum of two categories:

a12 <- read.csv("a12.csv")
names(a12)

#Aggregating the variable Objective by bumming the variable A
aggdata <- aggregate(A ~ Objective, data = a12, FUN = sum)
aggdata

#Note that the object aggdata is of the class data.frame
#Let us covert it as a vector.
#Our variable of interest is the sum value which is given in the second column of the dataframe aggdate.
#Storing the second column of aggdata as a vector in tab and naming the it by the first column of aggdata
tab <- aggdata[,2]
names(tab) <- aggdata[,1]
tab

#Plotting the barplot
#besides = T gives us the side-by-side barplor. by default it is F and gives us stacked barplot
#border = FALSE discards providing border to the plot
barplot(tab, beside = T, xlab = "Objective", ylab = "sum(A)", col = c("maroon", "orange"), border = FALSE)

