SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.genres
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'Poltergeist' AND tb2.startYear = 1982
AND tb1.titleType = 'movie'
AND tb1.primaryTitle != 'Poltergeist'
AND tb1.genres LIKE '%Horror%'
AND tb1.startYear > 1982
AND tb1.averageRating > 7
AND tb1.primaryTitle NOT IN ('The Incredibles', 'A Quiet Place')
ORDER BY tb1.averageRating DESC
LIMIT 5