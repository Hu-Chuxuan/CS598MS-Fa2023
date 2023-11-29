SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Animation%' 
AND tb.startYear >= 2010 
AND tb.startYear <= 2020 
AND tb.titleType = 'movie'
AND tb.tconst != 'tt0114709' -- Exclude "Inside Out" as it is in user's preference history
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5