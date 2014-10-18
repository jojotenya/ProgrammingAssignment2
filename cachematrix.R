## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

inverse <- function(){
y <- matrix(,ncol(x),nrow(x))
}



}


## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should 
## retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if(!is.null()) {
        print"target already been inversed"
        return() 
        }
        x$inverse()
        y[1,1]<-x[1,1]
        y[1,2]<-x[2,1]
        
        
        
}
