# Module 6 Assignment

# 1. Doing math with matrix
A<- matrix(c(2,0,1,3), ncol = 2)
B<- matrix(c(5,2,4,-1), ncol = 2)

A+B
A-B

#2. Build a matrix
C<- diag(c(4,1,2,3))
C

#3. Generate matrix
D<- diag(3,5,5)

# Try to make the matrix by change specific rows and columns
D[1,2:5] = 1
D[2:5,1] = 2
D
