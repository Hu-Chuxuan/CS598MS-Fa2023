SELECT * FROM `title` WHERE rating > 7 AND genre = "Action" ORDER BY ABS(numvotes - avgrating)/avgrating