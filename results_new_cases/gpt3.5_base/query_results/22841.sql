SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('The Hurt Locker (2008)', 'Black Hawk Down  (2002)', 'Braveheart (1995)', 'High Noon (1952)', 'Saving Private Ryan (1998)', 'MASH  (1970)')
AND (tb.startYear >= 2000 OR tb.startYear <= 2022)
ORDER BY tr.averageRating DESC
LIMIT 10