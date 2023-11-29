SELECT tb1.primaryTitle, tr.averageRating, tb1.startYear
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND (tb1.primaryTitle != 'Black Sheep' OR tb1.startYear != 1996)
AND (tb1.primaryTitle != 'Black Panther' OR tb1.startYear != 2018)
AND (tb1.primaryTitle != 'Jumanji' OR tb1.startYear != 2017)
ORDER BY tr.averageRating DESC
LIMIT 10