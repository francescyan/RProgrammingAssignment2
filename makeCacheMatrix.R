#makeCacheMatrix
#function takes in a 2x2 matrix and creates additional functions to set and retrieve matrix values
#and the inverse of matrix.  R, taking advantage of the lexical scoping property, allow data
#be set/saved to a special environment where subsequent call to this function
#will have access to not only list of functions defined here but saved data referenced as well.

#Note:  since discussion forum confirms assignment function is to take in a square matrix
#2x2 matrix with default values is created as argument
#see line comments in demonstrating how I created this function

makeCacheMatrix <- function(x = matrix(c(2,4,6,8),c(2,2))) {
        cinv <- NULL #this may not be needed
        set <- function(y) {    
                x <<- y  #caches y argument and set to special environment via <<-
                cinv <<- NULL  #clears out previous inverted values since a new matrix is being set
        }
        get <- function() x #gets cached value, it is like function(){x} returning just x
        setinv <- function(sinv) cinv <<- sinv #saves solved inversion to special envrionment via <<-
        getinv <- function() cinv #gets cached value, it is like function(){cinv} returning just cinv
        list(set = set, get = get, #returns list of functions
             setinv = setinv,
             getinv = getinv)
}