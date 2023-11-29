SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear BETWEEN 1990 AND 2010
AND tb.tconst NOT IN ('tt0942385', 'tt0109040')  -- excluding Superbad and Ace Ventura: Pet Detective
AND tb.tconst NOT IN ('tt4425200')  -- excluding User Preference History 'John Wick: Chapter 2 (2017)'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10