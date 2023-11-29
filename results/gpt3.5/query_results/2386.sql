SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.originalTitle NOT IN ('The Fast and the Furious')
AND (tb.primaryTitle NOT LIKE '%Superhero%' OR tb.originalTitle NOT LIKE '%Superhero%')
AND tb.primaryTitle NOT IN ('Speed')
AND tb.primaryTitle NOT IN ('The Taking of Pelham 123')
AND tb.startYear >= 1990
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC
LIMIT 10