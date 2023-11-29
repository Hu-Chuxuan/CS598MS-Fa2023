SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%'
AND tb.primaryTitle NOT IN ('The Notebook (2004)', 'La La Land  (2016)', 'Love Actually (2003)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5