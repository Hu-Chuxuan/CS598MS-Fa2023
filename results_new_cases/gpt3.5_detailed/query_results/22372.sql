SELECT tb.primaryTitle, tr.averageRating, tb.startYear
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Hugh Jackman'
AND tb.startYear IN (2013, 2017)
AND tb.titleType = 'movie'
AND tb.tconst NOT IN ('tt1430132', 'tt3315342') -- excluding The Wolverine and Logan
ORDER BY tr.averageRating DESC
LIMIT 10