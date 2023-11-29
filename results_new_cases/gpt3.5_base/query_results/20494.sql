SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle != 'Talladega Nights: The Ballad of Ricky Bobby (2006)'
ORDER BY tr.averageRating DESC
LIMIT 10