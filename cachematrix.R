## Put comments here that give an overall description of what your
## functions do

## variable stores function which will be used to store a matrix

makeCacheMatrix <- function(x = matrix()) {

  m<-NULL # default value to null if CacheSolve not used
  set<-function(y){ #set matrix value
    x<<-y # Cache matrix value. Later CacheSolve can use this tocheck whether value has changed
    m<<-NULL 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
