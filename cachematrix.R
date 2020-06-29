## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	## Initialize inverse property
    inv <- NULL

    ## Method to set matrix
    set <- function( matrix ) {
            m <<- matrix
            inv <<- NULL
    }

    ## Method to get matrix
    get <- function() {
    	## Return matrix
    	m
    }

    ## Method to set inverse of matrix
    setInverse <- function(inverse) {
        inv <<- inverse
    }

    ## Method to get inverse of matrix
    getInverse <- function() {
        ## Return inverse property
        inv
    }

    ## Return list of methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    
    ## Return matrix that's inverse of 'x'
    inv <- x$getInverse()

    ## Just return the inverse if its already set
    if( !is.null(inv) ) {
            message("getting cached data")
            return(inv)
    }

    ## Get the matrix from our object
    data <- x$get()

    ## Calculate the inverse using matrix multiplication
    inv <- solve(data) %*% data

    ## Set the inverse to the object
    x$setInverse(inv)

    ## Return the matrix
    inv

}
