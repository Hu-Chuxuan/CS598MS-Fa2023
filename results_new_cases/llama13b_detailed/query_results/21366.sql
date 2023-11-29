SELECT * FROM title_basics tb
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE nb.knownForTitles LIKE '%Tom Hanks%'
AND tc.directors LIKE '%Steven Spielberg%'
AND tp.category = 'actor'
AND tp.job = 'actor'
ORDER BY tp.characters ASC
LIMIT 5