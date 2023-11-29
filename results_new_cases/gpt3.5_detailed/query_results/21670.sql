SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Superhero%'
AND tb.startYear >= 1990
AND tb.titleType = 'movie'
AND tb.tconst NOT IN ('tt0103064', 'tt0120915')