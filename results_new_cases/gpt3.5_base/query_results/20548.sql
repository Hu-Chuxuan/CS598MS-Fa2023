SELECT primaryTitle, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Drama%'
AND primaryTitle NOT IN ('Me Before You ', 'The Shawshank Redemption (1994)', 'Thor: Ragnarok (2017)')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5