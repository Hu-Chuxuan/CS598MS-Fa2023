SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Romance%'
AND genres NOT LIKE '%Sad%'
AND averageRating > 7
AND primaryTitle NOT IN ('La La Land (2016)', 'Grease (1978)', 'Mamma Mia! (2008)')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5