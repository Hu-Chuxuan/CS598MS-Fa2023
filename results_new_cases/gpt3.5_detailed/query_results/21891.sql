SELECT tb.primaryTitle, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear = '2020'
AND 'Animation' = ANY (tb.genres)
AND tb.primaryTitle NOT IN ('The Basketball Diaries', 'The Good Son', 'Fight Club', 'The Wolf of Wall Street', 'Inception')
ORDER BY tr.averageRating DESC
LIMIT 5