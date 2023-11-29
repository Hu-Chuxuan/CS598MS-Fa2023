SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tb.runtimeMinutes AS duration_minutes, tr.averageRating AS average_rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Adventure%' OR tb.genres LIKE '%Fantasy%'
AND tb.tconst != 'tt0325980' -- excluding Pirates of the Caribbean
AND tb.primaryTitle NOT IN ('The Blair Witch Project (1999)', 'Ghost Story (1981)')
ORDER BY tr.averageRating DESC
LIMIT 5