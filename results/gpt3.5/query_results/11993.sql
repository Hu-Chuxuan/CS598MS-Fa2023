SELECT 
    tb.titleType,
    tb.primaryTitle,
    tb.startYear,
    tb.genres,
    tr.averageRating,
    tr.numVotes
FROM 
    title_basics AS tb
JOIN 
    title_ratings AS tr ON tb.tconst = tr.tconst
WHERE 
    tb.titleType = 'movie' 
    AND tb.startYear >= 2010 
    AND tb.genres LIKE '%Action%'
    AND tb.tconst != 'tt0062765' -- excluding Baby Driver (2017) as user has already mentioned it
ORDER BY 
    tr.averageRating DESC,
    tr.numVotes DESC
LIMIT 5