SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_principals AS tp ON tb1.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb1.titleType = 'movie'
AND (
    tb1.genres LIKE '%Horror%' OR
    tb1.genres LIKE '%Thriller%'
)
AND (
    tb1.startYear >= 1990 AND tb1.startYear <= 2017
)
AND (
    tb1.primaryTitle != 'Jigsaw' AND
    tb1.primaryTitle != 'The Silence of the Lambs'
)
AND (
    nb.primaryName NOT IN ('Saw', 'It', 'The Silence of the Lambs', 'It Follows', 'The Conjuring 2')
)
GROUP BY tb1.primaryTitle, tr.averageRating, tr.numVotes
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 3