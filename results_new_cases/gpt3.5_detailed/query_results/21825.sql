SELECT tb.primaryTitle, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON nb.nconst = tp.nconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE nb.primaryName = 'Reese Witherspoon'
AND tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt0092764', 'tt0093776', 'tt0213847', 'tt1045778', 'tt0109830', 'tt0859635')
ORDER BY tr.averageRating DESC
LIMIT 1