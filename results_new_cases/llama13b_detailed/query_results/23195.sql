SELECT * FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType ='movie'
AND tb.primaryTitle LIKE '%Fight Club%'
AND tp.category = 'actor'
AND tp.job LIKE '%Fight Club%'
AND tr.averageRating > 7
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC