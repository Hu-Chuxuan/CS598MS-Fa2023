SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tb.startYear AS release_year
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Romance%' OR tb.genres LIKE '%Drama%' OR tb.genres LIKE '%Sci-Fi%')
AND (tb.primaryTitle != 'The Matrix' AND tb.primaryTitle != 'Groundhog Day' AND tb.primaryTitle != 'Good Will Hunting' AND tb.primaryTitle != 'Notting Hill ')
AND (tb.primaryTitle NOT IN ('The Matrix', 'Groundhog Day', 'Good Will Hunting', 'Notting Hill '))
AND (tb.startYear >= 1990)
AND (tr.numVotes > 1000)
ORDER BY tr.averageRating DESC
LIMIT 5