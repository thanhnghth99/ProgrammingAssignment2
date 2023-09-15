## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # Initialize the inverse property
  m <- NULL
  
  # Method to set matrix
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  # Method to get matrix
  get <- function() {
    x
  }
  
  # Method to set the inverse
  setinverse <- function(inverse) {
    m <<- inverse
  }
  
  # Method to get the inverse
  getinverse <- function() {
    m
  }
  
  # Return a list of the methods
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  m <- x$getinverse()
  
  # Return the inverse if its already set
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  # Get the matrix from our object
  data <- x$get()
  
  # Calculate the inverse
  m <- solve(data, ...)
  
  # Set the inverse to the object
  x$setinverse(m)
  
  # Return the inverse matrix
  m
}
