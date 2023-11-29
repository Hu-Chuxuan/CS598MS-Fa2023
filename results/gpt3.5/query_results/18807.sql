SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.originalTitle = 'Trainspotting'
AND tb.startYear = 1996
AND NOT EXISTS (
    SELECT 1
    FROM title_basics
    WHERE genres LIKE '%Foreign%'
    AND tb.tconst = tconst
)
AND tb.tconst NOT IN ('tt0473100', 'tt0463034', 'tt1615918', 'tt0343660')