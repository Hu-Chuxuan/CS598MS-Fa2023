SELECT tb.primaryTitle AS Recommended_Movie, tb.startYear
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%' AND tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('The 40-Year-Old Virgin (2005)', 'Knocked Up (2007)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5