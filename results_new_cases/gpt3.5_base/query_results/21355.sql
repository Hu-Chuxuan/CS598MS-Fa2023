SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
WHERE tb.titleType = 'movie'
AND tb.genres NOT LIKE '%ape%'
AND tb.primaryTitle NOT IN ('High School Musical 2', 'High School Musical 3: Senior Year (2008)', 'Where the Red Fern Grows  (1974)', 'High School Musical ')
ORDER BY tb.startYear DESC
LIMIT 5