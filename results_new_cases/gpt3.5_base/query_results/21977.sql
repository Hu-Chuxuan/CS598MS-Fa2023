SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.startYear >= 1980 
AND tb.startYear <= 1985
AND tr.averageRating >= 7
AND tb.tconst NOT IN ('tt0088000', 'tt0090605', 'tt0103064', 'tt1431045', 'tt0088247', 'tt0099700', 'tt0100403', 'tt0094048', 'tt0092005')
ORDER BY tr.averageRating DESC, tb.startYear ASC
LIMIT 5