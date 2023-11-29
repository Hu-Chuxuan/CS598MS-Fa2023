SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%' 
AND tb.startYear BETWEEN 1985 AND 1990
AND tb.tconst != 'tt0095953'
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 10