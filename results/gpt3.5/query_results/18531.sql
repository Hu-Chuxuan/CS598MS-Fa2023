SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tb.runtimeMinutes AS duration_minutes, tb.genres AS movie_genres, tr.averageRating AS average_rating, tr.numVotes AS number_of_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND (nb.primaryName = 'Russell Crowe' OR tb.primaryTitle = 'Gladiator' OR tb.primaryTitle = '300' OR tb.primaryTitle = 'Kingdom of Heaven' OR tb.primaryTitle = 'Troy')
AND tb.primaryTitle NOT IN ('Gladiator', '300', 'Kingdom of Heaven', 'Troy')
AND tr.averageRating >= 7
AND tr.numVotes >= 5000
GROUP BY tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5