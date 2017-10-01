# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  length.difference <- abs(length(v1) - length(v2))
  return(paste("The difference in lengths is", length.difference))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1, 2, 3, 4), 1:10)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  length.difference <- length(v1) - length(v2)
  if (length.difference < 0) {
    return(paste("Your second vector is longer by", abs(length.difference), "elements"))
  } else {
    return(paste("Your first vector is longer by", abs(length.difference), "elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1, 2, 3, 4), 1:10)
DescribeDifference(1:10, c(1, 2, 3, 4))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(v1, v2) {
  length.difference <- length(v1) - length(v2)
  name.v1 <- deparse(substitute(v1))
  name.v2 <- deparse(substitute(v2))
  if (length.difference < 0) {
    return(paste("Vector", name.v2, "is longer by", abs(length.difference), "elements"))
  } else {
    return(paste("Vector", name.v1, "is longer by", abs(length.difference), "elements"))
  }
}

x <- c(1, 2, 3, 4)
y <- 1:10

DescribeDifference(skoo, atchoo)

x <- 1:10
y <- c(1, 2, 3, 4)

DescribeDifference(x, y)
