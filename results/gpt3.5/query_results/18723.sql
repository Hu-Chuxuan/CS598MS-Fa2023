SELECT tb.primaryTitle, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Adventure%' 
AND (tb.primaryTitle LIKE '%Indiana Jones%' OR tb.primaryTitle LIKE '%Lego%')
AND tb.primaryTitle != 'Lego Indiana Jones and the Raiders of the Lost Brick'
AND tb.startYear >= 2000
ORDER BY tr.numVotes DESC
LIMIT 5