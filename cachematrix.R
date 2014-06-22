## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

      #init save matrix & inverse_matrix to null
      my_matrix<<-x
      my_inv_matrix<<-NULL
      
      #get matrix
      getmatrix <- function() my_matrix
      
      #set the inverse of matrix
      setInverse <- function(inv) my_inv_matrix <<-inv 
      
      getInverse <-function() my_inv_matrix
      
      #Return list of functions
      list(getmatrix=getmatrix, setInverse=setInverse, getInverse=getInverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      
      # Inverse of the matrix
      inv<-x$getInverse()
     
      # Check if the inverse exists
      if(!is.null(inv)) {
            message("Inverse of the Matrix exists! Show previous results")
            # returns the previous inverse cached
            return(inv)
      }
      # If not, the inverse matrix is calculated
      inv<-solve(x$getmatrix (), ...)
      # caches the calculated inverse matrix
      x$setInverse(inv)
      # returns the inverse matrix
      inv
      
}
