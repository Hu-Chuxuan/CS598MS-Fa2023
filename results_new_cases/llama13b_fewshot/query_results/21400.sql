SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Pineapple Express' LIMIT 1)) > 0
AND EXISTS (
    SELECT 1
    FROM title_crew tc
    JOIN title_principals tp ON tc.tconst = tp.tconst
    WHERE tp.nconst = 'nm1588970' -- Actress name
)