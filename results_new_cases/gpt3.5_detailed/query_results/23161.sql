SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1990
AND tb.genres LIKE '%Thriller%'
AND nb.primaryName = 'David Fincher'
AND tb.tconst NOT IN ('tt0172495', 'tt0258000')
ORDER BY tr.averageRating DESC
LIMIT 5