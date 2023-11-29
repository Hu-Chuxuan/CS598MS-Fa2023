SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
    AND tb.genres LIKE '%Adventure%'
    AND tb.genres LIKE '%Fantasy%'
    AND tr.averageRating >= 7
    AND tb.primaryTitle NOT IN ('Guardians of the Galaxy', 'Guardians of the Galaxy Vol. 2', 'Spider-Man')
ORDER BY tr.numVotes DESC
LIMIT 2