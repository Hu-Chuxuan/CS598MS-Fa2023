SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Fight Club' LIMIT 1)) > 0
AND startYear > 1995
AND startYear < 2005
AND tb.tconst NOT IN ('tt0313542', 'tt2184339', 'tt0936501')