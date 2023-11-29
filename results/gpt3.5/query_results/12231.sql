SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN name_basics nb ON tc.directors = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Fantasy%'
AND nb.primaryName = 'Tim Burton'
AND tc.writers LIKE '%nm0000136%'
AND tb.primaryTitle NOT IN ('Alice in Wonderland  (2010)', 'Edward Scissorhands (1990)', 'The Nightmare Before Christmas (1993)', 'Alice Through the Looking Glass  (2016)')
ORDER BY tr.averageRating DESC
LIMIT 5