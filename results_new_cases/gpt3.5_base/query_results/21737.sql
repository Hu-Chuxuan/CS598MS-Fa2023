SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Romance%'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2000
AND (tb.primaryTitle != 'Guardians of the Galaxy' 
AND tb.primaryTitle != 'Thor'
AND tb.primaryTitle != 'The Avengers' 
AND tb.primaryTitle != 'The Dark Knight')
ORDER BY tr.averageRating DESC
LIMIT 5