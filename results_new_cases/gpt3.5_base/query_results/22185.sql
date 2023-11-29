SELECT tb.primaryTitle AS recommended_movie, 
       tb.startYear AS release_year, 
       tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1980
AND tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Thriller%' OR tb.genres LIKE '%Mystery%'
AND tb.primaryTitle NOT IN ('The Shining', 'The Karate Kid', 'Psycho')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 3