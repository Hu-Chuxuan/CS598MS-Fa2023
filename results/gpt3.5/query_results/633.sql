SELECT tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Spider-Man: Homecoming', 'The Shawshank Redemption', "Daddy's Home")
AND tb.startYear <= 2022
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5