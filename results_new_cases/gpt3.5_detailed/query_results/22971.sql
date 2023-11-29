SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Crime%' 
AND tb.genres LIKE '%Thriller%' 
AND tb.startYear > 1990 
AND tb.primaryTitle != 'Kiss the Girls'
AND tb.primaryTitle NOT IN ('Heat', 'The Town', 'Red', 'Den of Thieves')
ORDER BY tr.averageRating DESC
LIMIT 5