## Part 1: Debugging

my.num <- 6
initials <- "G. Y."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# The function sum does not take in strings. 
# Only takes in logical, or numerical or complex elements

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
#We need to also include the library in the script.
#library("stringr")

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# No previous variable is called and defined as "initial"
# We do have a variable labeled as initials with the "s"
# So possibly it is a typo


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
vector <- c(1, 4, 5, 6)
typeof(vector)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(vector.1, vector.2)
  return(paste("The difference in lengths is", abs(length(vector.2) - length(vector.1))))
# Pass two vectors of different length to your `CompareLength` function
vector.2 <- c(5, 4, 3 ,2, 5)
CompareLength(vector, vector.2)


# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector.1, vector.2) {
  difference <- abs(length(vector.2) - length(vector.1))
  if(length(vector.1) > length(vector.2)) {
    return(paste("Your first vector is longer by", difference, "elements"))
  } else if (length(vector.1) < length(vector.2)) {
    return(paste("Your second vector is longer by", difference, "elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function

DescribeDifference(vector, vector.2)
# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(vector.1, vector.2, vector.3) {
  return(sum(vector.1, vector.2, vector.3))
}

# Send 3 vectors to your function to test it.
v.1 <- 1:5
v.2 <- c(1, 5, 7, 8, 0)
v.3 <- seq(5, 10, 2)

new.vector <- CombineVectors(v.1, v.2, v.3)
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
library("stringr")
CapsTime <- function(course){
  return (str_to_lower(course))
}

no.caps <- CapsTime("Informatics 201")
print(no.caps)
