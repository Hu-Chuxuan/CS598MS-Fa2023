SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('John Wick: Chapter 2 (2017)', 'John Wick (2014)', 'Jason Bourne  (2016)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5