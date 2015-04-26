makeCacheMatrix <- function(x = matrix()) {
  m <- NULL #default value if cachesolve has not been called
  set <- function(y) {
    x <<- y # cache value of matrix
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) m <<- solve # set matrix value
  getmatrix <- function() m  # get matrix value
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}
# # The following function returns the inverse of the matrix. 
# # it checks if  inverse value is cached and gets the result. 
# # If not, it findsinverse and sets value in the cache 
#  
# # setinverse function. 
# # This function assumes that the matrix is always invertible. 
cacheSolve <- function(x, ...) {
  m <- x$getmatrix() # get matrix value
  if(!is.null(m)) { # check whether there is a inverse value cached
    message("getting cached data")
    return(m)
  }
  # no inverse value, now run the code below to cache it
  data <- x$get() # cache value of matrix
  m <- solve(data, ...) # find inverse value
  x$setmatrix(m) #cache value
  m
}


