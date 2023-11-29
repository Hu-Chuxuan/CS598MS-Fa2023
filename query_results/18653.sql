SELECT DISTINCT
    RANK() OVER(PARTITION BY tconst ORDER BY avgrating DESC) AS rank,
    tconst,
    nconst,
    category,
    job,
    averageRating,
    numvotes
FROM title_ratings WHERE tconst IN ('tt0000001','tt0000002')