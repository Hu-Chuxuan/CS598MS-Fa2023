SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1990
AND tb.genres LIKE '%Musical%'
AND nb.primaryName LIKE '%Lin%'
AND tb.primaryTitle NOT IN ('Zombieland (2009)', 'Newsies (1992)', 'Dr. Horrible\'s Sing-Along Blog', 'Easy A (2010)')
GROUP BY tb.tconst
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5