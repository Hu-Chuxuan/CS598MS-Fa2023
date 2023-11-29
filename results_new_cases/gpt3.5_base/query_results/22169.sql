SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear BETWEEN 2010 AND 2015
AND tb.primaryTitle NOT IN ('Sinister', 'La La Land', '10 Things I Hate About You')
ORDER BY tr.averageRating DESC
LIMIT 5