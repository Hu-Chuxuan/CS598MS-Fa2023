SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND NOT EXISTS (
    SELECT *
    FROM title_principals AS tp
    JOIN name_basics AS nb ON tp.nconst = nb.nconst
    WHERE tp.tconst = tb.tconst
    AND nb.primaryName = 'YourFriendName'
)
AND tb.startYear >= 2000
AND tb.genres LIKE '%Horror%'
AND tb.primaryTitle NOT IN ('The Signal  (2014)', 'Halloween  (2007)', 'A Nightmare on Elm Street (1984)', 'Identity  (2003)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5