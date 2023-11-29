SELECT * FROM title_basics tb
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.primaryTitle IN ('Click (2006)', 'I Now Pronounce You Chuck & Larry (2007)')
AND nb.primaryProfession IN ('actor', 'writer')
AND tc.directors IN ('nm0085156')
AND tp.category IN ('actor', 'writer')
AND tr.averageRating > 5
ORDER BY tr.averageRating DESC