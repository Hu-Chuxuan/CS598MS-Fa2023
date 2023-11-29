SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName LIKE '%Leonardo DiCaprio%'
AND tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tr.averageRating >= 7
AND tb.tconst NOT IN ('tt1663202', 'tt1130884')
ORDER BY tr.averageRating DESC
LIMIT 10