SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.startYear = 1994
AND tb.titleType = 'movie'
AND nb.primaryName = 'Stargate'
AND ARRAY_CONTAINS(nb.knownForTitles, 'tt0120201') = true
AND (tb.genres LIKE '%Sci-Fi%' OR tb.genres LIKE '%Adventure%')
AND tb.primaryTitle != 'Indiana Jones' AND tb.primaryTitle != 'Star Wars'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5