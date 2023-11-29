SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Comedy%'
AND tb1.startYear >= 1990
AND tb1.primaryTitle NOT IN ('The Three Stooges', 'Mrs. Doubtfire')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1