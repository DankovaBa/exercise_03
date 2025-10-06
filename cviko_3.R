rm(list=ls())

#BPC-BPI - Lecture 3
# R version 4.4.2 Win
# author Barbora Dankova

# path
setwd('C:/Users/NTB/Documents/skola/FEKT/magistr/1_semestr/PRG/exercise_03')
path <- 'C:/Users/NTB/Documents/skola/FEKT/magistr/1_semestr/PRG/exercise_03'

# Task 2
IndexOfMin <- function(array, first, last) {
  index <- first
  for (k in (first+1):last){
    if (array[k]<array[index]){
      index <- k}
  }
  return(index)
}

print(IndexOfMin(c(5,3,6,4,2,8), 1, 6))


# Task 3
SelectionSort <- function(array, n){
  for (i in 1:(n-1)){
    j <- IndexOfMin(array, i, n)
    temp <- array[i] 
    array[i] <- array[j] 
    array[j] <- temp
  }
  return(array)
  
}

print(SelectionSort(c(5,3,6,4,2,8), 5))

# Task 4
RecursiveSelectionSort <- function(array, first, last){
  if (first < last){
    index <- IndexOfMin(array, first, last)
    temp <- array[first]
    array[first] <- array[index]
    array[index] <- temp
    array <- RecursiveSelectionSort(array, (first + 1), last)}
    
  return(array)
}
print(RecursiveSelectionSort(c(5,3,6,4,2,8), 1, 6))
