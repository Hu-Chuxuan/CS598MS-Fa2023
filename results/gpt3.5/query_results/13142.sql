SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE 
    tb.startYear >= 2003
    AND tb.titleType = 'movie'
    AND tb.genres LIKE '%Action%'
    AND tb.genres LIKE '%Fantasy%'
    AND tb.genres NOT LIKE '%Horror%'
    AND tb.primaryTitle != 'Underworld'
    AND (tb.primaryTitle NOT IN ('22 Jump Street', 'A Good Day to Die Hard', 'Airplane!', 'Click'))
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5