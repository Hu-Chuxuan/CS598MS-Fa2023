SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Music%' OR tb.genres LIKE '%Musical%')
AND tb.titleType = 'movie'
AND tb.startYear > 1961
AND tb.primaryTitle NOT IN ('West Side Story', 'Garden State', 'The Sound of Music')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10