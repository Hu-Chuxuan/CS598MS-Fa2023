SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr on tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Family%' 
AND tb.genres NOT LIKE '%Adult%' 
AND tb.titleType = 'movie'
AND tb.startYear <= 2022
AND (tb.primaryTitle != 'The Little Rascals' OR tb.primaryTitle != 'Honey, I Shrunk the Kids')
ORDER BY tr.averageRating DESC
LIMIT 10