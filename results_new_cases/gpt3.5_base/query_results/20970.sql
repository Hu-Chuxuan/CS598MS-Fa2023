SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
   OR tb.genres LIKE '%Comedy%'
   OR tb.genres LIKE '%Adventure%'
   OR tb.genres LIKE '%Sci-Fi%'
   OR tb.genres LIKE '%Fantasy%'
   OR tb.genres LIKE '%Thriller%'
   OR tb.genres LIKE '%Animation%'
   AND tb.primaryTitle NOT IN
       (SELECT primaryTitle
        FROM title_basics
        WHERE genres NOT LIKE '%Action%' 
           AND genres NOT LIKE '%Comedy%' 
           AND genres NOT LIKE '%Adventure%'
           AND genres NOT LIKE '%Sci-Fi%'
           AND genres NOT LIKE '%Fantasy%'
           AND genres NOT LIKE '%Thriller%'
           AND genres NOT LIKE '%Animation%')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10