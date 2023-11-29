SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
AND tb.genres LIKE '%Comedy%'
AND tb.startYear > 2000 
AND tb.startYear < 2010 
AND tb.tconst != 'tt1431045' 
AND tb.tconst != 'tt0268978'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5