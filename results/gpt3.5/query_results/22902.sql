SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating, tb1.genres
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Musical%'
AND tb1.startYear >= 1950
AND tb1.startYear <= 2007
AND tb1.primaryTitle NOT IN ('South Pacific', 'Lars and the Real Girl', 'Mary Poppins', 'The Sound of Music', "Singin' in the Rain")
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5