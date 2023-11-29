SELECT tb.primaryTitle AS movie_title, tb.startYear AS release_year, tb.runtimeMinutes AS duration_minutes, tr.averageRating AS average_rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Stephen King' AND tb.titleType = 'movie'
ORDER BY tr.averageRating DESC
LIMIT 10