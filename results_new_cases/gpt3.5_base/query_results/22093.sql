SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Action%' 
AND tb.startYear BETWEEN 2015 AND 2019 
AND tb.tconst <> 'tt3890160' 
ORDER BY tr.averageRating DESC, tb.startYear DESC