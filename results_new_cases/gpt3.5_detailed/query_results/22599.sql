SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Billy Bob Thornton'
AND tb.primaryTitle != 'Sling Blade'
AND tb.titleType = 'movie'
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC
LIMIT 5