SELECT tb.primaryTitle AS recommended_movie
FROM title_principals tp
JOIN title_basics tb ON tp.tconst = tb.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Danny Devito'
AND tp.category = 'actor'
AND tp.tconst NOT IN (SELECT knownForTitles FROM name_basics WHERE primaryName = 'Danny Devito')
AND tb.genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'Sunset Boulevard')
LIMIT 5