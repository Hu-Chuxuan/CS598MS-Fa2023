SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Sci-Fi%'
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Adventure%'
AND tb.primaryTitle NOT IN ('The 40-Year-Old Virgin (2005)', 'Knocked Up (2007)')
ORDER BY tr.averageRating DESC
LIMIT 10