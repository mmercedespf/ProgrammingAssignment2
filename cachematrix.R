## Well I'm not quite sure if this code will work out...
## this is suposed to ... do something.

## This function creates the matrix

makeCacheMatrix <- function(x = matrix()) {
	s <- NULL
	set <- function(y) {  
		x <<- y                 
		s <<- NULL    
	}
	get <- function() x
	setinverse <- function(solve) s <<- solve
	getinverse <- function() s
	list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function retrieve the inverse of the matrix in the cache

cacheSolve <- function(x, ...) {
      s <- x$getinverse()               ## introduce the inverse into the variable "s"
	if (!is.null(s)){               ## if we have already the inverse, then print the inverse
		message("getting cached inverse")
		return(s)
	}
	inverse <- x$get()              ## if there is not inverse, then calculate the inverse and 
	s <- solve(inverse, ...)        ## storage the value into "s".
	x$setinverse(s)
	s 				## Return a matrix that is the inverse of 'x'

}

