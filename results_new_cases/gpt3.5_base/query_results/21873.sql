SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS movie_year, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tp.tconst = tb.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.genres LIKE '%Comedy%'
AND (tb.primaryTitle != 'Superbad' OR tb.startYear != 2007)
AND (tb.primaryTitle != 'Kick-Ass' OR tb.startYear != 2010)
AND (tb.primaryTitle != 'Moana' OR tb.startYear != 2016)
AND nb.primaryName IN ('Seth Rogen', 'Michael Cera', 'Jonah Hill', 'Chloë Grace Moretz')
GROUP BY tb.primaryTitle, tb.startYear, tb.genres
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5