## Put comments here that give an overall description of what your
## functions do

## it creates the functions and pass the data matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
             x   <<- y
             inv <<- NULL
        }
        get <- function() {x}
        setInv <- function(inverse) {inv <<- inverse }
        getInv <- function() {inv} 
        list(set=set,get=get,setInv=setInv,getInv=getInv)
}


## it verifies if the inveras was calculated previously, if not the it calculates the inverse matrix, if yes it shows the cache saved matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInv()
        if(!is.null(inv)){
                messages("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setInv(inv)
        inv
}
