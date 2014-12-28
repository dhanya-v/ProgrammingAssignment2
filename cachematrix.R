## Put comments here that give an overall description of what your

## functions do


## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) 
{
a <- NULL
            
set <- function(y) 
{
                   
 x <<- y
                   
 a <<- NULL
            
}
            
get <- function() x
           
 setcacheMatrix <- function(cacheMatrix) a <<- cacheMatrix
           
 getcacheMatrix <- function() a
           
 list(set = set, get = get,
                
 setcacheMatrix = setcacheMatrix,
                 
getcacheMatrix = getcacheMatrix)
   


}



## Write a short comment describing this function


cacheSolve <- function(x, ...) {
       
 ## Return a matrix that is the inverse of 'x'

a <- x$getcacheMatrix()
          
 if(!is.null(a)) {
                   
 message("getting cached data")
                   
 return(a)
          
  }
           
 data <- x$get()
           
 a <- solve(data, ...)
           
 x$setcacheMatrix(a)
          
  a
   
}
