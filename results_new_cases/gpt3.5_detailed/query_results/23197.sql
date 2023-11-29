SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%' AND tb.startYear >= 1990
AND tb.tconst NOT IN ('tt2184339', 'tt0137523', 'tt0110632') 
ORDER BY tr.averageRating DESC
LIMIT 5