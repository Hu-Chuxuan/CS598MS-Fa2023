SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Thriller%'
AND tb.primaryTitle NOT IN ('The Lord of the Rings: The Fellowship of the Ring (2001)', 'Friday the 13th  (1980)', 'A Nightmare on Elm Street (1984)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC