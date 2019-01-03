#cacheSolve
#function takes in results of makeCacheMatrix and returns inverse of matrix retrieved.
#Specifically, if matrix retrieved already has inversed values cached, cached inverse values 
#will be returned.  Otherwise, inverse of matrix will be calculated, cached and returned.

#see in line comments in demonstrating how I created the function

cacheSolve <- function(x, ...) {
        inv <- x$getinv() #gets cached inverse via passed in function makeCacheMatrix, and assigned to inv
        if(!is.null(inv)) { #if cached inverse is not null, returns cached inverse
                message("getting cached data")
                return(inv)
        }
        data <- x$get() #out of if statement, gets matrix values via passed in function makeCacheMatrix, assigned to data
        inv <- solve(data, ...) #calculates inverse of data
        x$setinv(inv) #caches newly calculated inverse value via passed in function makeCacheMatrix
        inv #returns newly calculated inverse values
}