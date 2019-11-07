install.packages("arules", dependencies=TRUE)
library(arules)
install.packages("arulesViz", dependencies=TRUE)
library(arules)

#summary
summary(Parking_Citations_1)

################################################building the rules##########################################################
#set minimum support to 0.001
#set minimum confidence to .75

rules <- apriori(Parking_Citations_1,
                 parameter = list(supp=0.001, conf=0.75))

options = 2
inspect(rules[1:10])


##plotting
plot(rules)

##scatter plot
plot(rules[1:20],
     method="graph",
     control = list(type = "items"))

#parallel coordinate plots
plot(rules[1:20],
     method="paracoord",
     control = list(reorder = TRUE))

#matrix plot
plot(rules[1:20],
     method="matrix",
     control = list(reorder = TRUE))

##group matrix
plot(rules[1:20],method="grouped")

