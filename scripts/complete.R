complete <- function(directory, id){
  val <- data.frame(id = id,
                    completed = NA)
  
  for (i in id) {
    filename <- sprintf("%03d.csv",i)
    path <- file.path(directory, filename)
    df <- na.omit(read.csv(path))
    
    val$completed[val$id == i] <- nrow(df)
  }
  
  val
}

cc <- complete("data/specdata", 54)
print(cc$completed)

RNGversion("3.5.1")
set.seed(42)
cc <- complete("data/specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "completed"])



