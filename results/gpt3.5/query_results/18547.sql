SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2015
AND tb.genres LIKE '%Animation%'
AND tb.genres NOT LIKE '%Adult%'
AND tb.primaryTitle NOT IN ('Moana', 'Wedding Crashers', 'The Emoji Movie', 'The Lego Batman Movie', 'Coco')
ORDER BY tr.averageRating DESC
LIMIT 5