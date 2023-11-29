SELECT primaryTitle AS recommended_movie
FROM title_basics
WHERE primaryTitle LIKE '%My Cousin Vinny%'
   OR primaryTitle LIKE '%Erin Brockovich%'
   OR genres LIKE '%Comedy%'
   OR genres LIKE '%Drama%'
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5