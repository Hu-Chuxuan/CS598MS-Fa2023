SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Animation%'
AND tb.startYear >= 2010
AND tb.startYear <= 2017
AND tr.numVotes > 1000
AND tb.primaryTitle != 'The Lion King (1994)'
AND tb.primaryTitle != 'E.T. the Extra-Terrestrial (1982)'
AND tb.primaryTitle != 'Coco  (2017)'
AND tb.primaryTitle != 'The Parent Trap  (1998)'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5