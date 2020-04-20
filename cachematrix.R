## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##this function blablabla
makeCacheMatrix <- function(x = matrix()) {

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
