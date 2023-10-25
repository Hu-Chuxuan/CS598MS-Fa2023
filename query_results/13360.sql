SELECT * FROM title_recommendation WHERE
(titleType = "Action" OR genre = "Action") AND
((startYear > $year && startYear < $year + 3)) AND
((genres LIKE '%%') || ((genres NOT NULL))) ORDER BY rating DESC LIMIT 5