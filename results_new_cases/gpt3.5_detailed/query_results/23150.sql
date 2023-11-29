SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%' 
      AND tb.startYear BETWEEN 2010 AND 2015
      AND tb.primaryTitle NOT IN ('The Purge (2013)', 'Hereditary (2018)')
ORDER BY tr.averageRating DESC
LIMIT 5