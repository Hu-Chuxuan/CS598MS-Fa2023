SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Romance%')
AND tb.startYear BETWEEN 2000 AND 2022
AND tb.primaryTitle NOT IN ('Hangover', 'Girls Trip', 'Notebook', 'Game Night')
ORDER BY tr.averageRating DESC
LIMIT 5