SELECT DISTINCT
    r.tconst AS titleID, r.averageRating AS avgRatings,
    r.numVotes AS numOfReviews
FROM (rating r INNER JOIN title_principals pr ON r.tconst = pr.tconst AND r.ordering >= pr.ordering)