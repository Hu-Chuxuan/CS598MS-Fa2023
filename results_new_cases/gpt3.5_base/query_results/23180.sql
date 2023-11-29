SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres IN (
    SELECT genres
    FROM title_basics
    WHERE primaryTitle IN ('Spotlight', 'The Post')
)
AND tb.tconst NOT IN (
    SELECT tconst
    FROM title_basics
    WHERE primaryTitle IN ('Spotlight', 'The Post')
)
AND tb.startYear >= 2010
ORDER BY tr.averageRating DESC
LIMIT 5