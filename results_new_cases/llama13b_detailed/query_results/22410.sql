SELECT * FROM title_basics
WHERE genres LIKE '%Comedy%' AND
      tconst NOT IN (SELECT tconst FROM title_ratings WHERE numVotes > 1000)
ORDER BY averageRating DESC, startYear ASC
LIMIT 5