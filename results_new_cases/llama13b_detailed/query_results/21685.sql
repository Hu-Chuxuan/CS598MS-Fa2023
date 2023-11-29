SELECT * FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.primaryTitle = 'The Hunt for Red October'
AND nb.primaryName IN ('Sean Connery', 'Alec Baldwin', 'Sam Neill')
AND tp.category IN ('actor', 'director')
AND tc.directors IN ('nm0005690', 'nm0374658')
ORDER BY numVotes DESC, averageRating DESC