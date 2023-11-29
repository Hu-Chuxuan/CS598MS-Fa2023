SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Step Brothers  (2008)', 'Talladega Nights: The Ballad of Ricky Bobby (2006)')
AND tb.titleType = 'movie'
ORDER BY tr.averageRating DESC
LIMIT 10