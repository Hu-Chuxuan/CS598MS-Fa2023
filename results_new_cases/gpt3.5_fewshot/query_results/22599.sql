SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Billy Bob Thornton'
AND tb.primaryTitle != 'Sling Blade'
AND tb.startYear > 1996
AND FIND_IN_SET('Movie', tb.titleType) > 0