SELECT t.primaryTitle, t.startYear, t.averageRating
FROM title_basics t
JOIN title_ratings r ON t.tconst = r.tconst
WHERE t.titleType = 'movie'
AND t.genres LIKE '%Comedy%'
AND t.primaryTitle NOT IN ('The Royal Tenenbaums (2001)', 'Meet the Fockers (2004)', 'The Life Aquatic with Steve Zissou (2004)', 'What About Bob? (1991)', 'Stripes  (1981)', 'Rushmore  (1998)')
ORDER BY r.averageRating DESC
LIMIT 10