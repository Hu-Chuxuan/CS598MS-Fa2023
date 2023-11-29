SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear >= 2010
AND tb.primaryTitle NOT IN ('Annabelle', 'The Conjuring', 'How to Lose a Guy in 10 Days', 'Sleepless in Seattle', 'Sleepless in New York')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5