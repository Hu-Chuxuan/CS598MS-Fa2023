SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
OR tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0116282', 'tt0078788', 'tt0114814', 'tt0093773', 'tt0110912', 'tt0054135')