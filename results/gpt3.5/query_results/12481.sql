SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.genres NOT LIKE '%Sci-Fi%'
AND tb.genres LIKE '%Drama%'
AND nb.primaryProfession LIKE '%actress%'
AND (tb.primaryTitle NOT IN ('Kill Bill: Volume 2 (2004)', 'Alien (1979)', 'Kill Bill: Volume 1 (2003)', 'Arrival (2016)')
OR tb.startYear NOT IN (2004, 1979, 2003, 2016))
GROUP BY tb.tconst
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10