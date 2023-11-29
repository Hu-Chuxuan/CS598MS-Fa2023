SELECT tb.primaryTitle AS recommended_movie, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Mystery%'
AND tb.genres LIKE '%Thriller%'
AND tb.primaryTitle NOT IN ('The Cabin in the Woods', 'The Village  (2004)', 'The Sixth Sense (1999)', 'The Others  (2001)')
ORDER BY tr.averageRating DESC
LIMIT 5