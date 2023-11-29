SELECT tb.primaryTitle
FROM title_basics tb
JOIN name_basics nb ON tb.primaryTitle = nb.knownForTitles
WHERE nb.primaryName = 'Danny DeVito'