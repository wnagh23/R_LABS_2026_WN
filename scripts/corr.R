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

cr <- corr("data/specdata")                
cr <- sort(cr)   
RNGversion("3.5.1")
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)

cr <- corr("data/specdata", 129)             
cr <- sort(cr)                
n <- length(cr)    
RNGversion("3.5.1")
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)

cr <- corr("data/specdata", 2000)                
n <- length(cr)                
cr <- corr("data/specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))








