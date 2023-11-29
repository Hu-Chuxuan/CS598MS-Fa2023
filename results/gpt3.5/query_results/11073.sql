SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Drama%'
AND tb.genres LIKE '%Thriller%'
AND tb.genres NOT LIKE '%Fantasy%'
AND tb.genres NOT LIKE '%Adventure%'
AND (tb.originalTitle LIKE '%novel%' OR tb.primaryTitle LIKE '%novel%')
AND nb.primaryName NOT IN ('Harry Potter', 'The Chronicles of Narnia')
AND tb.primaryTitle NOT IN ('The Devil\'s Advocate', 'The BFG', 'The Client')
AND tb.startYear >= 2000
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5