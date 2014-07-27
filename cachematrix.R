## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
			inverse <- NULL


## Set new matrix based on input parameter
		set <- function(y) {
			x <<- y
			inverse <<- NULL
		}

## Get special Matrix
		get <- function() {
			return(x)
		}

## Set special inverse Matrix
## Inverse attribute contains cached inverse matrix
	      setinverse <- function(inv) inverse <<- inverse

## Get special inverse Matrix
      	getinverse <- function() inverse

## Returns all methods defined on this class/function
        	list(set = set, get = get,
            	setinverse = setinverse,
             	getinverse = getinverse)

}


## Cache Inverse Matrix, if not previously cached calculates the inverse matrix
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
		
		inverse <- x$getinverse()
            print(inverse)
## If requested matrix already calculated then returns cached inverse matrix
		if (!is.null(inverse)) {
			message("getting cached data")
			return(inverse)
		}
		message("inverse matrix has not been previously calculated")
		matrix <- x$get()
		inv <- solve(matrix)
		print(matrix)
		x$setinverse(inv)
		
## Return inverse object
		return(inv)
}
