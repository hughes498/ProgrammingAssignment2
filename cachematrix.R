## Put comments here that give an overall description of what your
## functions do

## creates a Matrix to generate the inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set, 
       get = get, 
       setInverse = setInverse,
       getInverse = getInverse)
}


## uses the previous function to create a matrix and the inverse

cacheSolve <- function(x, ...) {
   inv <- x$getInverse()
   if(!is.null(inv)) {}
     message("getting cached data")
   return(inv) 
}
data <- x$get()
  inv <- solve(data, ...)
  x$setInverse(inv)
  inv
  ## Return a matrix that is the inverse of 'x'
}
