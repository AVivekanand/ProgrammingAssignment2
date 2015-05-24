### Introduction
Lines starting with # are simple comments, lines starting with > are things printed in the output.

# read the R script

# create a *square* matrix (because `solve` only handles square matrices
# create the matrix during the call of makeCacheMatrix()

> mat<-matrix(c(1,4,9,0,-3,2,2,7,8),3,3)

> m1<-makeCacheMatrix(mat)

# inverse is calculated via cache

> cacheSolve(m1)
#following is the output we get
         [,1]    [,2]     [,3]
[1,] -1.18750  0.1250  0.18750
[2,]  0.96875 -0.3125  0.03125
[3,]  1.09375 -0.0625 -0.09375

#second time when we call cache for same matrix m1,inverse is not calculated but returned from cache

> cacheSolve(m1)
#following is the output we get for second time

getting cached data - Inverse of the matrix
         [,1]    [,2]     [,3]
[1,] -1.18750  0.1250  0.18750
[2,]  0.96875 -0.3125  0.03125
[3,]  1.09375 -0.0625 -0.09375