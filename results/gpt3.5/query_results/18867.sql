SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1980
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Adventure%'
AND tr.averageRating >= 7
AND tr.numVotes >= 1000
AND tb.primaryTitle NOT IN ('Grosse Pointe Blank (1997)', 'The Perfect Storm (2000)', 'The Abyss (1989)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5