SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'X-Men: Apocalypse' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Avenger' LIMIT 1)) > 0
AND tb.startYear > 2010
AND tb.runtimeMinutes > 120