SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Alien%'
AND tb.startYear >= 1980
AND tb.primaryTitle NOT IN ('Annie Hall (1977)', 'When Harry Met Sally... (1989)', 'Sleepless in Seattle (1993)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5