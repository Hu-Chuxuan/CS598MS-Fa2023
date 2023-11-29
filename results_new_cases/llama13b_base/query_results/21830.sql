SELECT t1.title_basics.title, t1.title_basics.primaryTitle, t1.title_basics.originalTitle, t1.title_basics.isAdult, t1.title_basics.startYear, t1.title_basics.endYear, t1.title_basics.runtimeMinutes, t1.title_basics.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_basics.title_id = t2.title_id
WHERE t1.genres = 'Comedy'
AND t2.averageRating > 7
AND t1.primaryTitle IN ('Dumb and Dumber', 'Super Troopers')
AND NOT EXISTS (
  SELECT 1
  FROM title_basics t3
  WHERE t3.title_id = t1.title_id AND t3.primaryTitle IN ('Scarface', 'Goodfellas', 'Training Day', 'Lethal Weapon')
)
GROUP BY t1.title_basics.title, t1.title_basics.primaryTitle, t1.title_basics.originalTitle, t1.title_basics.isAdult, t1.title_basics.startYear, t1.title_basics.endYear, t1.title_basics.runtimeMinutes, t1.title_basics.genres, t2.averageRating, t2.numVotes
ORDER BY t2.averageRating DESC