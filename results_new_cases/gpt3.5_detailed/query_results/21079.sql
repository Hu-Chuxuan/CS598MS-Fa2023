SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_principals AS tp1 ON tb1.tconst = tp1.tconst
JOIN name_basics AS nb1 ON tp1.nconst = nb1.nconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear >= 2010
AND tb1.genres LIKE '%Drama%'
AND (tb1.primaryTitle NOT IN ('Jumanji (2017)', 'Rampage (2018)', 'Coming Home (2012)'))
AND nb1.primaryName = 'Zhang Yimou'
GROUP BY recommended_movie, release_year, rating
ORDER BY rating DESC
LIMIT 5