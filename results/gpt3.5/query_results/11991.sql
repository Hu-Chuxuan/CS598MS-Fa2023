SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS votes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE (tb.startYear BETWEEN 1993 AND 1999) 
  AND (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Drama%')
  AND (tb.primaryTitle != 'Friday' AND tb.primaryTitle != 'I'm Gonna Git You Sucka' AND tb.primaryTitle != 'As Good as It Gets')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5