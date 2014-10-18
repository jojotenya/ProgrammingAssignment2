## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    M <- NULL
    get <- function() x
    inverse <- function(){
        n <- nrow(x)
        m <- ncol(x)
        M <- matrix(,m,n)
        for(i in 1:n){
            for(j in 1:m){
                M[j, i] <<- x[i,j]
            }

        }
        M
    }
    get_inverse <- function() M
        
        list(inverse = inverse, get = get, get_inverse = get_inverse)
        
        
    }
    
    
    ## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
    ## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should
    ## retrieve the inverse from the cache.
    
    
    cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        M <- x$get_inverse()
        if(!is.null(M)) {
            message("target's already been inversed")
            return(M)
        }
        x$inverse()
        x$get_inverse()
    }
