## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Create maxtrix to cache inverse
makeCacheMatrix <- function(x = matrix()) {
      #init
      z <- NULL
      #set the matrix
      set <- function(y) {
            x <<- y
            z <<- NULL
      }
      #get the matrix
      get <- function() x
      
      #Set & get inverse, then list
      setInverse <- function(inverse) z <<- inverse
      getInverse <- function() z
      list(set=set, get=get, setInverse=setInverse, getInverse=geIinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
