SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN name_basics nb ON tc.directors = nb.nconst
WHERE nb.primaryName LIKE '%Nicholas%'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10