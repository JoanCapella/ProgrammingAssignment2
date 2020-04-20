## Put comments here that give an overall description of what your
## functions do
## Put comments here that give an overall description of what your functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
# I want to generate the inverse of a matrix x (i) and cache it
# I set variable x of the parental environment as y
# I set the inverse value to NULL so that I can calculate a new one with the new matrix
# I generate a list of functions that I can access to
# set the matrix, get the matrix, set the inverse, and generate the inverse

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){
                x<<- y
                i<<- NULL 
        }
        get <- function() x
        setinverse <- function(inverse) i<<- inverse
        getinverse <- function() i
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
# This function uses the previous one and actually calculates and returns the
# inverse matrix of the original input
# if it is already calculated it will just return the value and not calculate again

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)){
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data)
        x$setinverse(i)
        i 
                ## Return a matrix that is the inverse of 'x'
}
