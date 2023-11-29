SELECT tb.primaryTitle AS recommended_movie,
       tr.averageRating AS rating,
       tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2017
AND tb.genres LIKE '%Action%'
AND tr.averageRating >= 6.5
AND tr.numVotes >= 5000
AND (tb.primaryTitle NOT IN ('Justice League (2017)', 'Dunkirk (2017)', 'Thor: Ragnarok (2017)', 'Jumanji (1995)')
AND (tb.genres LIKE '%Adventure%' OR tb.genres LIKE '%Comedy%'))
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5