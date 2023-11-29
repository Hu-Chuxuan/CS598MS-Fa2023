SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Thriller%'
AND tb.genres LIKE '%Psychological%'
AND tb.genres LIKE '%Suspense%'
AND tb.genres LIKE '%Horror%'
AND tb.genres NOT LIKE '%Gore%'
AND tb.genres NOT LIKE '%Ridiculous%'
AND tb.primaryTitle NOT IN ('Annabelle (2014)', 'It (2017)', 'The Babadook (2014)', 'The Silence of the Lambs (1991)', 'Deadpool (2016)', 'Annabelle 2 (2017)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10