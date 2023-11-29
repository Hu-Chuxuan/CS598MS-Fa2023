SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear, tr.averageRating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_principals AS tp ON tb1.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Sci-Fi%'
AND tb1.startYear >= 2000
AND tr.averageRating >= 7.0
AND tp.category = 'director'
AND nb.primaryName = 'Rupert Sanders'
AND tb1.primaryTitle != 'Ghost in the Shell'  -- Avoid recommending the same title
AND tb1.primaryTitle NOT IN ('Total Recall', 'Paycheck')  -- Exclude user's historical preferences
GROUP BY recommended_movie
ORDER BY tr.averageRating DESC, tb1.startYear DESC
LIMIT 5