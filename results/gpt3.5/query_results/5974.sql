SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS average_rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND (tb.primaryTitle != 'Confessions of a Shopaholic' OR tb.primaryTitle != 'The Devil Wears Prada')
AND tb.startYear <= 2009
ORDER BY tr.averageRating DESC
LIMIT 5