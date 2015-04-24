makeCacheMatrix <- function(x = matrix()) { 
  z<- NULL 
  set <- function(y) {  #set matrix value
  x <<- y 
  z <<- NULL 
  } 
  get <- function() x 
  setinverse <- function(inverse) z <<- inverse 
  getinverse <- function() z 
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse) 
} 

# The following function returns the inverse of the matrix. 
# it checks if  inverse value is cached and gets the result. 
# If not, it findsinverse and sets value in the cache 
 
# setinverse function. 
# This function assumes that the matrix is always invertible. 
cacheSolve <- function(x=matrix(), ...) {
  m<-x$getmatrix() # get matrix value
  if(!is.null(m)){  # check whether there is a inverse value cached
    message("getting cached data")
    return(m)
  }
  # no inverse value, now run the code below to cache it
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}


