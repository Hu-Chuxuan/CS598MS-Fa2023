SELECT * FROM (title_ratings INNER JOIN title_principals ON title_ratings.tconst = title_principals.nconst WHERE title_rating > 6 AND title_principals.job LIKE '%actor%' OR title_principals.job LIKE '%director%') AS t1
INNER JOIN (title_basics INNER JOIN name_basics ON title_basics.tconst = name_basics.nconst) AS t2
ON t1.primaryName=t2.primaryName