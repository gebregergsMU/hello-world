## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function creates matrix object and capture its inverse.
# makeCacheMatrix creates a list containing a function to
# set the value of the matrix
# get the value of the matrix
# set the value of inverse of the matrix
# 4get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {

inverse=NULL   # the matrix is initalized to be Null and hence its inverse is Null
            set_data=function(y)
                    {
                x<<-as.matrix(y)  # creates matrix and saved in x
               inverse<<-NULL
                       }
    getMatrix<-function()x      # this function gets the matrix created above and store's it
    set_inverse<-function(inv)inverse<<-inv    # this is function sets an inverse matrix to be in variable inverse
    get_inverse<-function()inverse         # it capturs the inverse fuction
list(set_data=set_data,getMatrix=getMatrix,set_inverse=set_inverse,get_inverse=get_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse<-x$get_inverse()         # if it is already calculated
      if(!is.null(inverse)){
               message("getting cached data")
                return(inverse)
                      }
    data=x$getMatrix()     # if not already calculated then this function caputrs the data
    inverse=solve(data,...)   # using built in function "solve" determines inverse
    x$set_inverse(inverse)    # it recives the inverse matrix from "inverse" object
    inverse                  # it prints

}
