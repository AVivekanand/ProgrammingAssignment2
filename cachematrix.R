#This function creates an matrix(cache)   
makeCacheMatrix <- function(x = matrix()) { 
  inversematrix <- NULL      # initialize inversematrix to NULL                   
  set <- function(z) {                      
    x <<- z
    inversematrix <<- NULL   #set the value to null in case the matrix is changed.           
  }
  get <- function() x        # get the value of original matrix                           
  #calculate the inverse of  matrix using solve function
  setinverse <- function(solve) inversematrix <<- solve 
  # gets the inverse     
  getinverse <- function() inversematrix        
  # pass the values of function makeCacheMatrix in the form of list        
  list(set = set, get = get,                    
       setinverse = setinverse,
       getinverse = getinverse)
}

# get the cache of the matrix
cacheSolve<- function(x, ...) {                 
  inversematrix <- x$getinverse()
  #if the inverse exists, return the value of inverse from cache
  if(!is.null(inversematrix)) {                 
    message("getting cached data - Inverse of the matrix")
    return(inversematrix)
  }
  #if inverse is not there, then calculate it and return.
  data <- x$get()                               
  inversematrix <- solve(data, ...)
  x$setinverse(inversematrix)
  ## Return a matrix that is the inverse of 'x'
  inversematrix
}