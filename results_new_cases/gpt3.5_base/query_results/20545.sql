SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Jurassic Park', "There's Something About Mary (1998)", '50 First Dates (2004)', 
                            'Jurassic Park  (1993)', 'The Wedding Singer (1998)', "National Lampoon's Vacation (1983)")
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5