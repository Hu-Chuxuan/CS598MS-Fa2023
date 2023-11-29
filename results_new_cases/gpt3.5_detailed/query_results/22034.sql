SELECT tb1.primaryTitle AS recommended_movie,
       tb1.startYear AS release_year,
       tr.averageRating AS average_rating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
JOIN title_principals tp1 ON tb1.tconst = tp1.tconst
JOIN title_basics tb2 ON tp1.tconst = tb2.tconst
WHERE (tb2.primaryTitle = 'Zombieland' AND tb2.startYear = 2009) 
   OR (tb2.primaryTitle = '30 Minutes or Less' AND tb2.startYear = 2011)
   AND tb1.titleType = 'movie'
   AND tb1.primaryTitle NOT IN ('The Bodyguard', 'Waterworld', 'Field of Dreams', 'Dances with Wolves')
   AND tb1.startYear > 2011
ORDER BY tr.averageRating DESC
LIMIT 5