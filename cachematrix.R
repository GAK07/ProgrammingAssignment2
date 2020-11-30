

#makeCacheMatrix: This function creates a special "matrix" object that can cache
#its inverse.

## Write a short comment describing this function
#I took the makeVector function and transformed it to makeCacheMatrix

#set the value of matrix
#get the value of matrix
#set the value of solve
#get the value of solve
makeCacheMatrix <- function(x = matrix(sample(1:200),4,4)) {
  a <- NULL
  set <- function(q) {
    x <<- q
    a <<- NULL
  }
  get <- function() x
  set_solve <- function(solve) a <<- solve
  yey_solve <- function() a
  list(set = set, get = get,
       set_solve = set_solve,
       yey_solve = yey_solve)
}
#x is the matrix of 4 col/lines
#q is the function
# a is set as null


##cacheSolve: This function computes the inverse of the special "matrix" 
#returned by makeCacheMatrix above. 
#If the inverse has already been calculated (and the matrix has not changed),
#then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  a <- x$getsolve()
  if(!is.null(a)) {
    message("getting inversed matrix")
    return(a)
  }
  data <- x$get()
  a <- solve(data, ...)
  x$setsolve(a)
  s
}
        ## Return a matrix that is the inverse of 'x'

