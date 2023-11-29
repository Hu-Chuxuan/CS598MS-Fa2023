SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.primaryTitle = 'High Crimes'
AND (tb.startYear = '2002' OR tb.startYear = '2001' OR tb.startYear = '2003')
AND tb.titleType = 'movie'