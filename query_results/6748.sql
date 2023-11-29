SELECT DISTINCT r.id AS id FROM title_reviews R
INNER JOIN title_ratings RAT ON R.titleID = RAT.tconst AND R.userID=RAT.nconst WHERE RAT.numvotes > 1 ORDER BY R.averagerating DESC LIMIT 10