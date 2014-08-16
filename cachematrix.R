## Put comments here that give an overall description of what your
## functions do 
## Comments added by Vin
## Similar to what example has illustrated
## makeCacheMatrix will assign m a solved matrix
## set vector get vector set matrix get matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m

list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}


## Write a short comment describing this function
##$getmatrix is function from above
## get the matrix solve it to inverse set it pront it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getmatrix()
    if(!is.null(m)){
      message("Cached Matrix")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
