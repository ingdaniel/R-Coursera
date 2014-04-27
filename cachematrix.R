## Return the inverse of a matrix ‘A’


## The first function, makeCacheMatrix creates a list containing a function to get the matrix set the inverse (with the function solve) get the inverse

makeCacheMatrix <- function(A = matrix()) {
  inv <- NULL
  get <- function() A
  setsol <- function(sol) inv <<- sol
  getsol <- function() inv
  list(get = get,
       setsol = setsol,
       getsol = getsol)
}


## The second function, cacheSolve, computes the inverse of the matrix returned by makeCacheMatrix. This function also check if the inverse has already been calculated (and the matrix has not changed) in this case, cacheSolve retrieve the inverse from the cache.

cacheSolve <- function(A, ...) {
  inv <- x$getsol()
  if(!is.null(inv)) {
    message("getting cached inverse")
    return(inv)
  }
  inv <- A$getsol()
  data <- A$get()
  inv <- sol(data, ...)
  x$setsol(inv)
  inv
}
