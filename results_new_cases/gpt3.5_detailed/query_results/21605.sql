SELECT primaryTitle
FROM title_basics
WHERE tconst IN (
    SELECT knownForTitles
    FROM name_basics
    WHERE primaryName = 'Kumail Nanjiani'
)
AND startYear >= 2015
AND genres LIKE '%Comedy%'
AND tconst NOT IN ('tt5462602')  -- Exclude The Big Sick itself
ORDER BY averageRating DESC
LIMIT 5