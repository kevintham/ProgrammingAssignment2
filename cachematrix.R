## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m.inv <<- NULL
	set <- function(m) {
		x <<- m
		m.inv <<- NULL
	}
	get <- function() x
	setm.inv <- function(matrix.inverse) m.inv <- matrix.inverse
	getm.inv <- function() m.inv
	list(set = set, get = get, setm.inv = setm.inv, getm.inv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m.inv <- x$getm.inv
	if(!is.null(m.inv)) {
		message('getting cached data')
		return m.inv
	}
	mat <- x$get
	x$setm.inv(solve(mat))
	m.inv
}
