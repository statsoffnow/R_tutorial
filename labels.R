## build a dataframe

ID  <-  c(1:10)
time <-  rnorm(10, mean = 19.5, sd = 1.32)
group <-  c(1,0,0,1,2,2,1,1,2,0)

dataframe <- data.frame(ID, time, group)


### take a look at the variables
str(dataframe)

## summarize the data
summary(dataframe)

## change the 'group' variable into factorial 
dataframe$group_factor <- as.factor(dataframe$group)

## summarize the data again
summary(dataframe)


## change the 'group' variable into factorial and add labels

dataframe$group_labels <- factor(dataframe$group,
                                 levels = c(0,1,2),
                                 labels = c('control', 
                                            'placebo', 
                                            'experimental'))

## summarize the data
summary(dataframe)

