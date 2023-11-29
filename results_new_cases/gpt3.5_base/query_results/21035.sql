SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Drama%' 
AND tb.primaryTitle NOT IN ('The Untouchables', 'The Pianist', 'Whiplash')
ORDER BY tr.averageRating DESC
LIMIT 10