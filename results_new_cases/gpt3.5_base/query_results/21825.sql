SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Reese Witherspoon'
AND tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.startYear <= 2020
AND tb.primaryTitle NOT IN ('Hangover', 'Girls Trip', 'Super Troopers', 'Pineapple Express', 'Dumb and Dumber', 'Super Troopers 2')
ORDER BY tb.averageRating DESC, tb.numVotes DESC
LIMIT 1