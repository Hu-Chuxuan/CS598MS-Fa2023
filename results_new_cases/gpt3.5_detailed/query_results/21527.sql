SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%' 
AND tb.genres LIKE '%Romance%'
AND (tb.startYear = 1988 OR tb.startYear = 1983)
AND tb.primaryTitle NOT IN ('Beaches','Terms of Endearment','It Follows','Sinister')
ORDER BY tr.averageRating DESC
LIMIT 5