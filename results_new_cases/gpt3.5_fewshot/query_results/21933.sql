SELECT tb.primaryTitle
FROM title_basics tb
WHERE tb.genres IN (SELECT genres FROM title_basics WHERE primaryTitle = 'The Matrix' AND startYear = 1999 LIMIT 1)