SELECT tb.primaryTitle
FROM title_basics tb
WHERE tb.titleType = 'movie'
AND tb.startYear < 2018
AND tb.startYear > 2010
AND tb.isAdult = 0
AND tb.tconst NOT IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'Deadpool 2 (2018)' LIMIT 1)
AND tb.tconst NOT IN (SELECT knownForTitles FROM name_basics WHERE primaryName = 'Ryan Reynolds' LIMIT 1)
AND FIND_IN_SET('Thriller', tb.genres) > 0
ORDER BY RAND()
LIMIT 1