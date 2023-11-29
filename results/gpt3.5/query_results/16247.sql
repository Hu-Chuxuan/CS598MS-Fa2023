SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Drama%'
AND nb.primaryName = 'Julia Roberts'
AND tb.primaryTitle != 'Wonder'
AND tb.primaryTitle NOT IN ('Almost Famous (2000)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5