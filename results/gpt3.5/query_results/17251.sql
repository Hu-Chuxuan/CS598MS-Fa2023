SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Tom Hanks'
AND tb.titleType = 'movie'
AND tb.startYear > 1998
AND (tb.genres LIKE '%Drama%' OR tb.genres LIKE '%Romance%')
AND tb.primaryTitle NOT IN ('You\'ve Got Mail', 'Castaway', 'Steel Magnolias')
GROUP BY tb.primaryTitle
ORDER BY tb.averageRating DESC, tb.numVotes DESC
LIMIT 5