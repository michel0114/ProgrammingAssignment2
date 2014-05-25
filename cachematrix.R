## Put comments here that give an overall description of what your
## functions do

## Calculate inverse matrix (in advance)

makeCacheMatrix <- function(x = matrix()) {
        ## Calculate inverse matrix (in advance)
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        ## solve(X) returns its inverse.
        setsolve <- function(solve) m <<- mean
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}
}

## Return inverse matrix

cacheSolve <- function(x, ...) {
        ## Return inverse matrix
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
