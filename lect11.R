
# Data Cleaning

data <- data.frame ( x1= c(1:4, 99999,1,NA,1,1,NA),
                     x1= c(1:5,1,"NA",1,1,"NA"),
                     x1=c(letters[c(1:3)],"x x","x","  y  y y","x","a","a",NA),
                     x4=" ",
                     x5=NA)
data
# view the column name
colnames(data)

colnames(data) <- paste0("col",1:ncol(data))
colnames(data)
data

# format missing values

data[data==""] # print blank data cells

data[data==" "] <-NA # replace blank by NA
data

data$col2[data$col2 =="NA"] <- NA # replace character. by  NA
data

data <- data[rowSums(is.na(data)) != ncol(data),]     #to delete the NA (empty) rows
data

data <- data[,colSums(is.na(data)) != nrow(data),]     #to delete the NA (empty) columns
data

# removing rows with missing values

data <- na.omit(data)
data

data <- unique(data) # removing duplicate data
data

sapply(data,class)  # print classes of all columns

data <- type.convert(data,as.is=TRUE)
data

sapply(data,class)

# identify the outlier2
data$col1[data$col1 %in% boxplot.stats(data$col1)$out]

# remove rows with outlier

data<- data[! data$col1 %in% boxplot.stats(data$col1)$out,] 
data

# remove dpaces in character string
d<- data$col3 <-gsub(" ", "",data$col3)
d
