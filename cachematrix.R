## This function caches the inverse of a matrix, created of function x and
## then retrieves the inverse from that cache. 

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
              m <- null
              set <- function(y) {
                     x <<- y
                     m <<- NULL
         }
         get <- function() x  
         setinverse <- function(inverse) m <<- inverse
         getinverse <- function () m
         list(set = set, get = get,
                         setinverse = setinverse,
                         getinverse=getinverse)
}

## This function retrieves inverse from the chache.

cacheSolve <- function(x, ...) {
          m <- x$getmatrix()
          if(!is.null(m)) {
          message("getting cached data")
          return(m)
     }

## Return a matrix that is the inverse of 'x'
          
          matrix <- x$get()
          m <- solve(matrix, ...)
          x$setmatrix(m)
          m
}
