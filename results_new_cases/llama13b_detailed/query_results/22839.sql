SELECT * FROM title_basics tb
JOIN
(
SELECT nconst, primaryName, birthYear, deathYear, primaryProfession, knownForTitles
FROM name_basics
WHERE birthYear < 1980 AND deathYear IS NULL
) nb
ON tb.primaryTitle IN (SELECT title FROM title_basics WHERE nconst = nb.nconst)
JOIN
(
SELECT tconst, averageRating, numVotes
FROM title_ratings
WHERE startYear > 2000 AND endYear < 2020
) tr
ON tb.tconst = tr.tconst
WHERE tb.isAdult = 0
AND tb.genres LIKE '%Animation%'
AND tb.runtimeMinutes > 60
ORDER BY tr.averageRating DESC