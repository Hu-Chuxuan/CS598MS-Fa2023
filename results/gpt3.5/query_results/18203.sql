SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE primaryName = 'Bruce Willis' AND category = 'actor'
AND startYear >= 1980 AND startYear <= 1990
AND genres LIKE '%Action%' AND genres LIKE '%Thriller%'
AND tb.tconst NOT IN ('tt0095765', 'tt0080120', 'tt0086960')  -- excluding user's historical preferences
GROUP BY tb.tconst
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5