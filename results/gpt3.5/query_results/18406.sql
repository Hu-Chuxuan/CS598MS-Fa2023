SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2011
AND tb.genres IN ('Comedy', 'Drama', 'Thriller', 'Action', 'Romance', 'Horror')
AND tb.tconst NOT IN ('tt0112431', 'tt0848537', 'tt1570728')