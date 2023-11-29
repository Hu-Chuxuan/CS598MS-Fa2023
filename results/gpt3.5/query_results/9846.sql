SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_crew AS tc ON tb.tconst = tc.tconst
JOIN name_basics AS nb ON tc.directors = nb.nconst
WHERE startYear = 2014
AND tb.genres LIKE '%Sci-Fi%'
AND tb.tconst NOT IN ('tt0816692')  -- Exclude Interstellar
AND tb.primaryTitle NOT IN ('Blade Runner (1982)', 'Edge of Tomorrow (2014)', 'Blade Runner 2049 (2017)')  -- Exclude user preferences
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5