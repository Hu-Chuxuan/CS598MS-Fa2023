SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Animation%' 
AND (tb.primaryTitle LIKE '%Finding Dory%' OR tb.primaryTitle LIKE '%Finding Nemo%')
AND tb.startYear > 2000
AND tb.startYear < 2022
AND tb.isAdult = 0
AND tb.tconst NOT IN ('tt2011254', 'tt0126029', 'tt1856101')
ORDER BY tr.averageRating DESC
LIMIT 5