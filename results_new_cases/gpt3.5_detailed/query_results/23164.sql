SELECT title_basics.primaryTitle, title_basics.startYear, title_basics.runtimeMinutes, title_ratings.averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.genres LIKE '%Comedy%' 
AND title_basics.genres NOT LIKE '%Horror%'
AND title_basics.startYear >= 2000 
AND title_basics.titleType = 'movie'
AND title_basics.primaryTitle NOT IN ('A Perfect Getaway (2009)', 'Friday the 13th  (1980)', 'The Purge (2013)')
ORDER BY title_ratings.averageRating DESC, title_basics.startYear DESC
LIMIT 10