SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics 
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie' 
AND title_principals.category = 'actress' 
AND title_basics.genres LIKE '%Comedy%'
AND startYear >= 2000
AND startYear < 2010
AND primaryTitle NOT IN ('Bridget Jones\'s Diary  (2001)', 'Bridget Jones ')
ORDER BY averageRating DESC
LIMIT 5