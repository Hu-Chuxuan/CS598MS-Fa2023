SELECT tb.primaryTitle, tb.startYear, tb.genres 
FROM title_basics tb 
WHERE tb.titleType = 'movie' 
AND tb.isAdult = 0 
AND tb.startYear <= 2022 
AND tb.genres LIKE '%Family%'
AND tb.tconst NOT IN ('X-Men (2000)', 'Avenger (2006)', 'X-Men: Apocalypse (2016)')
ORDER BY tb.averageRating DESC, tb.numVotes DESC
LIMIT 5