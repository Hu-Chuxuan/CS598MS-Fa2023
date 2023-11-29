SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Children%' OR tb.genres LIKE '%Family%') 
AND (tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Thriller%')
AND tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tr.numVotes >= 1000
AND tb.tconst NOT IN ('tt1985949', 'tt3521164', 'tt4481414')  -- Exclude the user's historical preferences
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10