SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.genres LIKE '%Thriller%'
AND tb.startYear = 2016
AND tr.numVotes > 1000
AND tb.primaryTitle NOT IN ('The Cabin in the Woods', 'Don\'t Breathe (2016)', 'The Boy  (2016)')
ORDER BY tr.averageRating DESC
LIMIT 5