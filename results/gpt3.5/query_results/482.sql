SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1950
AND tb.genres LIKE '%Musical%'
AND tb.primaryTitle NOT IN ('West Side Story', 'The Rocky Horror Picture Show')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5