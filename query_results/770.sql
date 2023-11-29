SELECT * FROM title WHERE genre IN ('documentary','comedy') AND ((rating > avg(rating)) OR (rating < avg(rating))) ORDER BY rating DESC LIMIT 5

### Part B
Write an algorithm to determine whether two string arrays contain identical contents using Loops and Array methods such as length() method and.equals() method. Write your code so that you don’t use any hardcoded values, variables or constants