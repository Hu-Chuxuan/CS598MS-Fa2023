SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Suspense%'
AND tb.genres LIKE '%Horror%'
AND tb.genres LIKE '%Drama%'
AND (tb.primaryTitle != 'Poltergeist' OR tb.startYear != 1982) 
AND (tb.primaryTitle != 'Mama' OR tb.startYear != 2013)
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10