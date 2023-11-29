SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Drama%' 
AND tb.startYear BETWEEN 1990 AND 2000 
AND tb.tconst NOT IN ('tt0109830', 'tt0120815') 
AND tb.primaryTitle NOT IN ('Gone Girl', 'The Girl on the Train', 'Murder on the Orient Express') 
ORDER BY tr.averageRating DESC