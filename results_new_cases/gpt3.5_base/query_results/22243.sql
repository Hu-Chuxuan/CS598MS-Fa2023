SELECT tb.primaryTitle AS movie_title, tb.startYear AS release_year, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%'
AND tb.startYear BETWEEN 1990 AND 2000
AND tb.primaryTitle NOT IN ('Forrest Gump', 'Saving Private Ryan', 'Gone Girl', 'The Girl on the Train', 'Murder on the Orient Express')
ORDER BY tr.averageRating DESC
LIMIT 5