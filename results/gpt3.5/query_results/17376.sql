SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear BETWEEN 2016 AND 2018
AND tb.primaryTitle NOT IN ('Saving Private Ryan (1998)', 'Rampage: President Down (2016)', 'American Sniper (2014)')
ORDER BY tr.averageRating DESC
LIMIT 5