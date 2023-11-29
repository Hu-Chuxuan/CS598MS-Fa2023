SELECT tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
INNER JOIN title_crew tc ON tb.tconst = tc.tconst
WHERE tc.directors LIKE '%Pedro Almodovar%'
AND tb.genres IN (SELECT genres FROM title_basics WHERE primaryTitle = 'Arrival (2016)')
AND tb.tconst NOT IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'Arrival (2016)')
ORDER BY tb.averageRating DESC, tb.numVotes DESC
LIMIT 5