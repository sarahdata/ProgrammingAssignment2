## Theses functions cache the inverse of a matrix

## Creation of an object "matrix" which can cache its inverse

makeCachematrix<-function(x=matrix()){
  matrix<-NULL
  set<-function(y) {
    x<<-y
    matrix<<-NULL    
  }
  get<-function()x
  setsolve<-function(solve) matrix<<-solve
  getsolve<-function()matrix
  list(set=set, get=get, setsolve=setsolve, getsolve=getsolve)
}


## Calculate the inverse of the object "matrix" previously created if it has not been calculated yet (meaning if the matrix has changed)

cacheSolve <-function(x, ...){
  matrix<-x$getsolve()
  if(!is.null(matrix)){
    message("getting cached data")
    return (solve)
  }
  data<-x$get()
  matrix<-solve(data,...)
  x$setsolve(matrix)
  matrix
}
