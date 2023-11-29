SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS total_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Sci-Fi%'
AND tb.primaryTitle NOT IN ('Blade Runner', 'Independence Day', 'Ghost in the Shell', 'I, Robot')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5