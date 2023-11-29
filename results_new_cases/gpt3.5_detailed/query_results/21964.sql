SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Musical%'
AND startYear > 2016
AND startYear < 2019
AND tconst NOT IN ('tt5463162', 'tt1431045')  -- Exclude The Greatest Showman and user's previously liked movies
ORDER BY averageRating DESC
LIMIT 5