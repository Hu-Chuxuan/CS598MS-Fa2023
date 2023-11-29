SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Horror%' 
AND tb.startYear = 2004 
AND tb.primaryTitle != 'Saw' 
AND tb.primaryTitle NOT IN ('The Shawshank Redemption (1994)', "Mr. Holland's Opus (1995)") 
ORDER BY tr.averageRating DESC