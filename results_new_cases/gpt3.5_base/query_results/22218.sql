SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Adventure%' 
AND tb1.startYear >= 1980
AND tb1.startYear <= 1989
AND tb1.tconst NOT IN 
  (SELECT tp.tconst
   FROM title_principals tp
   JOIN name_basics nb ON tp.nconst = nb.nconst
   WHERE nb.primaryName = 'The Amityville Horror  (1979)')
AND tb1.tconst <> 'tt0097576'
ORDER BY tr.averageRating DESC
LIMIT 5