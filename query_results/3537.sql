SELECT DISTINCT movies.* FROM title_recommendation AS mr INNER JOIN
(title_ratings LEFT OUTER JOIN title_principals ON rating = nconst) as r INNER JOIN
(name_basics RIGHT OUTER JOIN title_crew ON primaryProfession=job) as p INNER JOIN
(title_basics LEFT OUTER JOIN name_basics ON tconst=nconst) as b WHERE userPreferredCategory IN ('action','kid') AND userInput LIKE '%' AND mr.numReviews >= 5