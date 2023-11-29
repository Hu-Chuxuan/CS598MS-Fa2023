SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Fantasy%' 
AND tb.startYear > 2000 
AND tb.startYear < 2010 
AND tb.primaryTitle != 'Eragon'
AND tb.primaryTitle NOT IN ('Teaching Mrs. Tingle (1999)', 'Date Night (2010)', 'Deadpool 2 (2018)', 'Game Night (2018)', 'Deadpool (2016)')
ORDER BY tr.averageRating DESC
LIMIT 5