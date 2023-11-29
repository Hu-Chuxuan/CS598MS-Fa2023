SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Sci-Fi%'
AND tb.startYear > 1968
AND tb.primaryTitle NOT IN ('Planet of the Apes','The Rocky Horror Picture Show')
AND nb.primaryName = 'Charlton Heston'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1