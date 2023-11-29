SELECT tb1.primaryTitle
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'Easy A (2010)' AND tb1.primaryTitle != 'Easy A (2010)'
LIMIT 5