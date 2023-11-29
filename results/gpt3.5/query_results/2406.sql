SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' AND tb.genres LIKE '%Drama%'
AND tb.primaryTitle NOT IN ('Walk the Line (2005)', 'La La Land  (2016)', 'Cold Mountain  (2003)', 'Love and Basketball (2000)', 'The Notebook (2013)')
ORDER BY tr.averageRating DESC
LIMIT 5