SELECT tb.primaryTitle, tr.averageRating, tb.startYear
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Drama%'
AND nb.primaryProfession LIKE '%actor%'
AND tb.startYear > 2011
AND tr.averageRating > 7
AND tb.tconst NOT IN ('tt0054698', 'tt1454029')
GROUP BY tb.primaryTitle, tr.averageRating, tb.startYear
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5