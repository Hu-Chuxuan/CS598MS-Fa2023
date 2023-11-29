SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' AND tb.genres LIKE '%Mystery%'
AND tb.startYear <= 2020
AND tr.averageRating >= 7.5
AND tb.primaryTitle NOT IN ('The Hurt Locker (2008)', 'Inglourious Basterds (2009)', 'Dunkirk  (2017)', 'Darkest Hour  (2017)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5