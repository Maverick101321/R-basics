#Creating matrices in R
A = matrix(c(1,2,3,4), nrow = 3, ncol = 3, byrow = TRUE)
print(A)

#Creating Special matrices
#1. Scalar Matrix - where all the rows and columns are filled by one value k
b =  matrix(3, 3, 4)
print(b)
#2. Diagonal Matrix - Values which we want in the diagonal
c = diag(c(3,4,5,6,7,8), 3, 3)
print(c)
#3. Identity Matrix 
d = diag(1, 3, 3)
print(d)

#Matrix Metrics
#dim() will return the size of the matrix
#nrow() and ncol() will return the number of rows and columns resp. of the matrix. 
#prod(dim()) or length() will return the number of elements in a matrix

#Aceessing and deleting rows and columns of a matrix
#naming the rows and columns of the matrix
rownames(A) = c("d", "e", "f")
colnames(A) = c("a", "b", "c")
print(A)
print(A[,1:2]) #prints only the first two columns
print(A[1:2,]) #prints only the first two rows
print(A[1,1]) # prints element at row=1 col=1
#We can also access the elements using the rows and column names
print(A[,c("a", "c")])
print(A[c("d", "f"),])

#To access all rows or columns except any one row or column we can do so like this
#To print all rows except row 2
print(A[-2,])
#to print all columns except column 3
print(A[,-3])

B = matrix(c(1,7,3,4,4,6,4,7,12), nrow = 3, ncol = 3, byrow = TRUE)
print(B)
B[3, 3] = 13
print(B)
print(B[3,2])

#Colon Operator Example
C = matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3, byrow = TRUE)
print(A[c(1,2), -2])

#Matrix Concatenation(Make sure the dimensions are same)
#Concatenation refers to merging of rows or columns of a matrix
#Concatenation of a row can be done by rbind()
D = matrix(c(10, 11, 12), nrow = 1, ncol = 3, byrow = TRUE)
cd = rbind(C, D)
print(cd)
#Concatenation of a column can be done by cbind()
E = matrix(c(10,11,12), nrow = 3, ncol = 1, byrow = TRUE)
ed = cbind(C, E)
print(ed)

#Matrix Addition
print(B+C)
#Matrix Subtraction
print(B-C)
#Matrix Multiplication(Element wise multiplication)
print(B*C)
#Matrix Multiplication(Normal wala)
print(B%*%C)
#Matrix Division(Only returns element wise division)
I = matrix(c(4,9,16,25), nrow = 2, ncol = 2, byrow = TRUE)
J = matrix(c(2,3,4,5), nrow = 2, ncol = 2, byrow = TRUE)
print(I/J)



