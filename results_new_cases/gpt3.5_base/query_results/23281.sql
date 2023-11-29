SELECT tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Family%'
AND tb.genres LIKE '%Animation%'
AND tb.startYear > 2000
AND tr.averageRating > 7
AND tb.primaryTitle NOT IN ('The Lord of the Rings', 'Thor')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5