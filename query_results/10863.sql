SELECT * FROM title_basics WHERE tconst = "Action" AND titleType <> "" GROUP BY titleType HAVING COUNT(*) > 2