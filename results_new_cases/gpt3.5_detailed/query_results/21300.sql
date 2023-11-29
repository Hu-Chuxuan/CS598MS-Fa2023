SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS average_rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_principals AS tp1 ON tb1.tconst = tp1.tconst
JOIN title_crew AS tc ON tb1.tconst = tc.tconst
JOIN name_basics AS nb ON tc.directors = nb.nconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Comedy%'
AND tb1.startYear >= 1999
AND tb1.startYear < 2000
AND tb1.primaryTitle NOT LIKE '%Tully%'
AND tb1.primaryTitle <> 'American Pie'
AND nb.primaryName NOT LIKE '%Charlize%'
AND tb1.primaryTitle NOT IN ('The Shawshank Redemption', 'Chasing Amy')
GROUP BY tb1.primaryTitle, tb1.startYear, tr.averageRating
ORDER BY tr.averageRating DESC
LIMIT 5