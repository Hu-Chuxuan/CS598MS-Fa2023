SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Psychological%' AND tb.genres LIKE '%Thriller%'
AND tb.primaryTitle NOT IN ('Nocturnal Animals  (2016)', 'Annabelle 2 (2017)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5