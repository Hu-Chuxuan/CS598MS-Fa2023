SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Drama%' AND tb.genres LIKE '%Thriller%' AND tb.genres LIKE '%Mystery%'
AND tb.startYear >= 2000 
AND tb.startYear <= 2014
AND tb.genres LIKE '%Snow%' 
AND tb.tconst NOT IN ('tt0209144', 'tt2267998')