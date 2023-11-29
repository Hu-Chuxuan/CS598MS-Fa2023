SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear = 1998
AND tb.genres LIKE '%Horror%'
AND tb.tconst NOT IN ('The Purge: Election Year (2016)', 'Jigsaw (2017)', 'The Purge (2013)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5