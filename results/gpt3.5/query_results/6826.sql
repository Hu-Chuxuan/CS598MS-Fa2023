SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear BETWEEN 2010 AND 2018
AND tb.primaryTitle NOT IN ('A Bad Moms Christmas (2017)', 'This Is 40 (2012)', 'Neighbors  (2014)', 'Bad Moms (2016)', 'Jurassic World (2015)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5