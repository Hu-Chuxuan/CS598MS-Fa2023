SELECT * FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType ='movie'
AND tc.directors!= ''
AND tp.category = 'actor'
AND tp.job!= ''
AND tr.averageRating > 5
AND tr.numVotes > 1000
AND tb.genres LIKE '%Action%'
ORDER BY tr.averageRating DESC, tp.job ASC