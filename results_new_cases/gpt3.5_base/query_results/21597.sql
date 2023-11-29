SELECT tb.primaryTitle AS recommendation, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.genres LIKE '%Crime%'
AND tb.startYear >= 1990
AND tb.startYear <= 2000
AND tr.numVotes > 10000
AND nb.primaryName = 'Quentin Tarantino'
AND tb.primaryTitle NOT IN ('Toy Story (1995)', 'Peter Rabbit (2018)', 'Pulp Fiction (1994)')
GROUP BY tb.primaryTitle, tr.averageRating
ORDER BY tr.averageRating DESC
LIMIT 5