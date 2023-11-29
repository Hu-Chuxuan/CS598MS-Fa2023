SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.genres NOT LIKE '%War%'
AND tb.primaryTitle NOT IN ('The Shining', 'The Witch', 'Resolution')
AND tb.startYear BETWEEN 1980 AND 2015
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10