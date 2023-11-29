SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE (tb2.primaryTitle = 'Rosemary\'s Baby' AND tb2.startYear = 1968)
   OR (tb2.primaryTitle = 'The Exorcist' AND tb2.startYear = 1973)
   AND tb1.titleType = 'movie'
   AND tb1.startYear > 1973
   AND tb1.genres LIKE '%Horror%'
   AND tb1.primaryTitle NOT IN ('Bridesmaids', 'Juno', 'Pitch Perfect')
GROUP BY tb1.primaryTitle
ORDER BY tb1.averageRating DESC, tb1.numVotes DESC
LIMIT 10