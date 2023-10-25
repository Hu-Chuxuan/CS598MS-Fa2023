SELECT * FROM (
    SELECT tb.*, nr.*, tc.*, np.*, tcr.*
       , rn.title AS recommendedMovie
FROM title_basic as tb
INNER JOIN rating_average as ra ON tb.tconst = ra.tconst AND ra.numvotes > 1