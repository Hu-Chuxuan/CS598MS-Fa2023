SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_principals AS tp ON tb.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tr.averageRating >= 7.5
AND tb.startYear >= 1980
AND tb.genres LIKE '%Comedy%'
AND nb.primaryName = 'Bill Murray'
AND tb.primaryTitle NOT IN ('Groundhog Day  (1993)', 'Zombieland (2009)', 'What About Bob? (1991)', "National Lampoon's Vacation (1983)", 'Happy Gilmore (1996)')
GROUP BY tb.primaryTitle
ORDER BY COUNT(*) DESC
LIMIT 1