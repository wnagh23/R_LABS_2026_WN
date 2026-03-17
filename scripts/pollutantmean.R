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

print(pollutantmean("data/specdata","nitrate", 70:72))
print(pollutantmean("data/specdata","sulfate", 34))
print(pollutantmean("data/specdata","nitrate"))

