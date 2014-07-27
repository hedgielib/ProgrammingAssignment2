## The purpose of these functions is to find and store the inverse of a given matrix
##in order to reduce the number of computational intensive operations that occur.

##Function Name: makeCacheMatrix
##Function Purpose: This function creates a data type capable of holding a matrix
##and its inverse
##Input: Matrix
##Output: Cache Matrix

makeCacheMatrix <- function(initialmatrix = matrix()) {
    matrixinverse <- NULL
    set <- function(newmatrix) {
        initialmatrix <<- newmatrix
        matrixinverse <<- NULL
    }
    get <- function() initialmatrix
    setinverse <- function(solve) matrixinverse <<- solve
    getinverse <- function() matrixinverse
    list(set = set, get = get,
        setinverse = setinverse,
        getinverse = getinverse) 
    }
    
}

## Name: cacheSolve
## Purpose: Find an inverse of a matrix by first checking cache and
## if null solving for the inverse
## Input: Matrix that has been processed through makeCacheMatrix
## Output: Matrix Inverse

cacheSolve <- function(cachedmatrix, ...) {
        ## Return a matrix that is the inverse of 'x'
    inverseofmatrix <- cachedmatrix$getinverse()
    if(!is.null(inverseofmatrix)) {
        message("getting cached data")
        return(inverseofmatrix)
    }
    matrix <- x$get()
    inverseofmatrix <- solve(currentmatrix, ...)
    cachedmatrix$setinverse(inverseofmatrix)
    inverseofmatrix
}
