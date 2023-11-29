SELECT tb1.primaryTitle, tb1.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
JOIN title_crew tc ON tb1.tconst = tc.tconst
JOIN name_basics nb ON tc.directors = nb.nconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Comedy%'
AND tb1.genres LIKE '%Sport%'
AND tb1.startYear >= 1980
AND tb1.startYear <= 1990
AND nb.primaryName = 'Penny Marshall'
AND tb1.primaryTitle != 'Major League'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5