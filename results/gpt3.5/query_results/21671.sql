SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.originalTitle = 'The Book of Eli'
AND tb.startYear = 2010
AND tb.titleType = 'movie'
AND tr.numVotes > 1000
AND (tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%' OR tb.genres LIKE '%Drama%')
AND tr.averageRating > 6.5
AND tb.tconst NOT IN ('tt0102926')
AND tb.tconst NOT IN ('tt1029237')
AND tb.tconst NOT IN ('tt0132426')
AND tb.tconst NOT IN ('tt0258463')
AND tb.tconst NOT IN ('tt0053137')