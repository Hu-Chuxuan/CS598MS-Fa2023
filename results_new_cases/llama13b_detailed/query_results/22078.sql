SELECT * FROM title_basics
WHERE
(
genres LIKE '%Drama%'
AND genres LIKE '%Crime%'
AND genres LIKE '%Thriller%'
)
OR
(
titleType ='movie'
AND primaryTitle LIKE '%Drive%'
AND primaryTitle LIKE '%Half%'
AND primaryTitle LIKE '%Baked%'
)
OR
(
titleType ='movie'
AND primaryTitle NOT LIKE '%Drive%'
AND primaryTitle NOT LIKE '%Half%'
AND primaryTitle NOT LIKE '%Baked%'
AND (
genres LIKE '%Horror%'
OR genres LIKE '%Mystery%'
OR genres LIKE '%Suspense%'
)
)
ORDER BY averageRating DESC, numVotes DESC