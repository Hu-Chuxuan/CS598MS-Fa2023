SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Zombie%' 
AND tb.primaryTitle NOT IN ('Superbad', 'Dumb and Dumber', 'Pineapple Express') 
ORDER BY tr.averageRating DESC