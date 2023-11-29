SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tp.nconst = 'nm1055413' -- Michael Fassbender's nconst
AND tb.titleType = 'movie'
AND tb.startYear > 2000
ORDER BY tr.averageRating DESC
LIMIT 10