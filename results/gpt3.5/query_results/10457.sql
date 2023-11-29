SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Hannibal Lecter' 
AND tb.titleType = 'movie'
AND tb.startYear > 2002
AND tb.genres LIKE '%Horror%'
AND tb.tconst NOT IN ('tt0275277', 'tt0289765', 'tt0081505', 'tt0102926', 'tt0078748')
ORDER BY tr.averageRating DESC
LIMIT 5