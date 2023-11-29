SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS year
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Crime%' 
AND tb.startYear BETWEEN 1960 AND 2020
AND (tb.primaryTitle LIKE '%Drive%' OR tb.primaryTitle LIKE '%The Italian Job%')
AND tb.primaryTitle NOT IN ('The Greatest Showman (2017)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5