# Module 5 

# This assignment is to find the value of inverse of a matrix and determinant of a matrix
# Two matrices are given below

A=matrix(1:100, nrow=10)
B=matrix(1:1000, nrow=10)


# Try to find the inverse of the matrix A and its determinant
det(A)
solve(A)
# det(A) return value is 0, and determinant is 0 means that the matrix is singular
# solve(a) returns error message "Lapack routine dgesv: system is exactly singular: U[6,6] = 0"
# This message is also telling us that the matrix is singular and cannot be inverted.


# Try to find the inverse of the matrix B and its determinant
det(B)
solve(B)
# Both codes will show up an error message that telling us the matrix must be a square matrix
# Because nrow = 10, that makes the matrix have 10 rows and 1000 column
# If a matrix is a non-square matrix, it will not have a determinant 



# Just try to create an example about the inverse of a matrix and how to calculate the determinant for a non-singular square matrix
# Example
v1<- c(1,4)
v2<- c(7,3)
class(v1)
class(v2)
C= matrix(rbind(v1,v2), nrow = 2)
det(C)
solve(C)