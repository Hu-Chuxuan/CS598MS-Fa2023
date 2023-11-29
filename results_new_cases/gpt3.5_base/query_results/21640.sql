SELECT tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
AND tb.startYear >= 2010 
AND tb.startYear <= 2020 
AND (tb.primaryTitle != 'Wonder Woman' OR tb.startYear != 2017)
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5