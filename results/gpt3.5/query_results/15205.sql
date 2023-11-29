SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.genres
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Horror%' 
AND tb1.startYear >= 2010 
AND tr.averageRating >= 7
AND tb1.tconst NOT IN 
    (SELECT tp.tconst 
     FROM title_principals tp 
     JOIN name_basics nb ON tp.nconst = nb.nconst 
     WHERE nb.primaryName = 'It  (2017)')
LIMIT 5