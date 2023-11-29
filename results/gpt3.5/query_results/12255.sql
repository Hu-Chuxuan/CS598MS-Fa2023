SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND nb.primaryName = 'Liam Neeson'
AND tr.numVotes > 1000
AND startYear > 1990
AND tb.tconst NOT IN ('tt0107290', 'tt0120915')  -- Excluding "Schindler's List" and "Star Wars: Episode I – The Phantom Menace"
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5