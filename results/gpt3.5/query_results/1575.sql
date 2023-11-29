SELECT tb2.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_crew AS tc ON tb1.tconst = tc.tconst
JOIN title_principals AS tp ON tb1.tconst = tp.tconst
JOIN title_basics AS tb2 ON tp.tconst = tb2.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear >= 2000
AND tb1.genres LIKE '%Comedy%' AND tb1.genres LIKE '%Drama%'
AND tc.directors = 'nm1078699'
AND tr.averageRating >= 7.5
AND tb2.primaryTitle NOT IN ('Knocked Up (2007)', 'The House  (2017)', 'Lost in Translation  (2003)')
GROUP BY tb2.primaryTitle
ORDER BY COUNT(*) DESC
LIMIT 5