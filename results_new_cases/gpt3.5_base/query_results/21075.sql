SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Family%' 
AND tb.startYear >= 2010 
AND tb.tconst NOT IN ('tt0107290', 'tt0068713', 'tt0163025', 'tt2283362') 
ORDER BY tr.averageRating DESC 
LIMIT 10