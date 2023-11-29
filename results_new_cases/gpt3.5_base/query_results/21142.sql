SELECT tb.primaryTitle AS recommended_movie, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%'
AND tb.startYear >= 2010
AND tb.averageRating >= 7
AND (
    tb.primaryTitle IN (
        'Hitch  (2005)', '27 Dresses (2008)', 'Maid in Manhattan'
    ) OR tb.genres LIKE '%Romance%'
)
AND tb.primaryTitle != 'Faster (2010)'
ORDER BY tr.numVotes DESC
LIMIT 5