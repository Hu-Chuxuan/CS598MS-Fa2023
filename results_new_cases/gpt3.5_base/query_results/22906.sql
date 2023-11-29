SELECT tb2.primaryTitle, tb2.startYear, tb2.runtimeMinutes, tb2.genres
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb1.primaryTitle = 'La La Land'
AND tb1.startYear = 2016
AND tb2.titleType = 'movie'
AND tb2.primaryTitle NOT IN ('Chappie', 'I, Robot', 'Blade Runner', 'A.I. Artificial Intelligence')
AND tb2.startYear < 2016
ORDER BY tb2.averageRating DESC
LIMIT 5