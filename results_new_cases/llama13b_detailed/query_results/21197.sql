SELECT * FROM title_basics tb
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.primaryTitle = 'Ant-Man and the Wasp (2018)'
AND nb.primaryProfession = 'actor'
AND tc.directors = 'nm0005690'
AND tp.category = 'actor'
AND tr.averageRating > 7
ORDER BY tr.averageRating DESC