#Solve a system of linear equations.  In this case 
#the system of linear equations being solved is as follows:

#  3x - 5y + 8z = 4
#  x + 3y - 7z = 6
#  6x + y - 5z = 11

#The matrices containing the variable coefficient and right sides
#of the equations need to be established.  The system can then be solved.

#Coefficient matrix of 3 rows by 3 columns.
coefficient_matrix = matrix(c(3,-5,8,1,3,-7,6,1,-5), nrow = 3, ncol = 3, byrow = TRUE)

#Matrix for the right side of the system of equations (3x1)
right_side_matrix = matrix(c(4,6,11), nrow = 3, ncol = 1)

#Solve the system of equations with a small linear dependency tolerance.
solution = solve(coefficient_matrix, right_side_matrix, tol = 1e-7)

#Print and display the solution.
message("The solution to this system of equations is x = ", solution[1],", y = ", solution[2],
        " and z = ", solution[3])
