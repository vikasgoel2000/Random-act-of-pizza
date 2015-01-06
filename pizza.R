install.packages("rjson")
library(rjson)
data<-fromJSON('train.json')
# reading json file 
library(plyr)

#Converting list into data frame


json_file <- lapply(json_file, function(x) {
  x[sapply(x, is.null)] <- NA
  unlist(x)
})

#You just need to replace your NULLs with NAs , Once you have a non-null value for each element, you can call rbind without getting an error

data<-do.call("rbind", json_file)


