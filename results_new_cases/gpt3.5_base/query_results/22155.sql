SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
    OR tb.genres LIKE '%Action%'
    AND tb.primaryTitle NOT IN ('Scream  (1996)', 'Annabelle  (2014)', 'The Sixth Sense (1999)')
ORDER BY tr.averageRating DESC
LIMIT 5