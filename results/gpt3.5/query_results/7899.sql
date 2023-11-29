SELECT tb.primaryTitle AS recommended_movie,
       tr.averageRating AS rating,
       tr.numVotes AS num_votes,
       tb.startYear AS release_year,
       tb.genres AS genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2010
AND tb.startYear <= 2017
AND tb.primaryTitle NOT IN ('Bridesmaids', 'Bad Moms', 'Girls Trip')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5