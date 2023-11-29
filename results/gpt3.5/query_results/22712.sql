SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Romance%')
AND tb.startYear >= 2000
AND tb.startYear < 2010
AND tb.primaryTitle NOT IN ('My Big Fat Greek Wedding (2002)', 'Lars and the Real Girl (2007)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5