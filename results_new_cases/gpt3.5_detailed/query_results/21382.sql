SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%' 
AND tb.startYear > 2000
AND tb.startYear < 2020
AND tb.primaryTitle != 'Nocturnal Animals'
ORDER BY tr.averageRating DESC, tb.startYear ASC
LIMIT 5