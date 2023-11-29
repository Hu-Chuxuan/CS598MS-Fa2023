SELECT tb.primaryTitle AS RecommendedMovie, tb.startYear AS ReleaseYear, tb.genres AS Genres
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear = 2002
AND tb.genres LIKE '%Drama%'
AND nb.primaryName NOT IN ('Denzel Washington', 'Ryan Gosling', 'Sandra Bullock')
AND tb.primaryTitle NOT IN ('Remember the Titans', 'Hoosiers', 'The Blind Side')
GROUP BY tb.primaryTitle, tb.startYear, tb.genres
ORDER BY tb.averageRating DESC, tb.numVotes DESC
LIMIT 5