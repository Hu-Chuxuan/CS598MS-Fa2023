SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tb.startYear AS release_year
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%War%'
AND tb.startYear >= 1980
AND tb.primaryTitle != 'Darkest Hour'
AND tb.primaryTitle NOT IN ('Lemmy', 'Immortal Beloved', 'Amadeus')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5