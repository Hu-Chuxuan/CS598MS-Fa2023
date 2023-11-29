SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%' 
AND tb.startYear >= 2015 
AND tb.startYear <= 2019
AND tb.tconst <> 'tt5109784'
ORDER BY tr.averageRating DESC
LIMIT 5