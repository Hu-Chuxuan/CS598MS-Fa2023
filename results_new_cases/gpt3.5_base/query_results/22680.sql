SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'The Incredibles (2004)' 
   OR tb2.primaryTitle = 'Super Troopers (2001)'
   OR tb2.primaryTitle = 'Wreck-It Ralph (2012)'
   OR tb2.primaryTitle = 'Pineapple Express (2008)'
   AND tb1.isAdult = 0
   AND tb1.titleType = 'movie'
   AND tb1.startYear >= 2010
   AND tb1.startYear <= 2022
   AND tb1.averageRating >= 7.5
ORDER BY tb1.numVotes DESC
LIMIT 5