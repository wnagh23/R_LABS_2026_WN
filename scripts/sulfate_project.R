df <- na.omit(read.csv("data/specdata/009.csv"))
nrow(df)

# Part 1

pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  val = c()
  
  for (i in id) {
    filename <- sprintf("%03d.csv", i)
    path <- file.path(directory, filename)
    data <- read.csv(path)

    val <- c(val, data[[pollutant]])
  }
  
  mean(val, na.rm = T)
}

print(pollutantmean("data/specdata","sulfate", 1:100))

# Part 2

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


print(complete("data/specdata", 1:10))


# Part 3. 

corr <- function(directory, threshold = 0) {
  
  val <- c()
  
  for (i in 1:332) {
    filename <- sprintf("%03d.csv",i)
    path <- file.path(directory, filename)
    df <- na.omit(read.csv(path))
    if (nrow(df) < threshold) { next } else {
      val <- c(val, cor(df$sulfate, df$nitrate))
    }
  }
  
  val
}

x <- corr("data/specdata", 150)
print(x)


















