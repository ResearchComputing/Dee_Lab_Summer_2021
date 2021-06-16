args <- commandArgs(trailingOnly = TRUE)
car <- (args[1])
mpg <- as.numeric(args[2])

paste("The ", car , " gets " , mpg , " mpg.")
