SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear > 2010
AND tb.startYear < 2022
AND (tb.primaryTitle LIKE '%Mummy%' OR tb.primaryTitle LIKE '%Mad Max%')
AND tb.primaryTitle NOT IN ('The Mummy  (1999)', 'Mad Max Beyond Thunderdome (1985)', 'Jumanji  (2017)', 'Mad Max (1979)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5