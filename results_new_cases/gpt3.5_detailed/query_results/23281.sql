SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.isAdult = 0
AND tb.genres LIKE '%Family%'
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt0120737', 'tt0800369')  -- excluding 'The Lord of the Rings' and 'Thor'
ORDER BY tr.averageRating DESC
LIMIT 5