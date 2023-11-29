SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE (tb.genres LIKE '%Animation%' OR tb.genres LIKE '%Family%') 
AND tb.startYear >= 1990 
AND (tb.primaryTitle != 'The Lion King' AND tb.primaryTitle != 'The Princess Diaries') 
ORDER BY tr.averageRating DESC
LIMIT 10