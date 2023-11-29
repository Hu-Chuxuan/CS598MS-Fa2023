SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tb.genres AS movie_genres, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 1980
AND tb.genres LIKE '%Fantasy%'
AND tb.primaryTitle NOT IN ('Ella Enchanted  (2004)', 'Beetlejuice (1988)', 'Ghostbusters  (2016)', 'The Princess Bride  (1987)', 'Ghostbusters (1984)')
AND nb.primaryName = 'Chris Hemsworth'
AND nb.primaryProfession LIKE '%actor%'
ORDER BY tr.averageRating DESC
LIMIT 5