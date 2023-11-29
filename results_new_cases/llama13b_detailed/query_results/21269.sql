SELECT * FROM title_basics
WHERE primaryTitle IN ('The Secret Life of Pets', 'Moana')
AND (
    genres LIKE '%Animation%'
    OR
    directors LIKE '%Nm%')

UNION ALL

SELECT * FROM title_ratings
WHERE tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle IN ('The Secret Life of Pets', 'Moana'))
AND numVotes > 100

UNION ALL

SELECT * FROM name_basics
WHERE primaryName IN ('Fred Astaire', 'Ginger Rogers')
AND (
    knownForTitles LIKE '%Top Hat%'
    OR
    knownForTitles LIKE '%Swing Time%'
)

ORDER BY startYear DESC