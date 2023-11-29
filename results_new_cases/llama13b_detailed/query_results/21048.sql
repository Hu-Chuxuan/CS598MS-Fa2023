SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.startYear = 2016 AND tb.genres LIKE '%Musical%'
AND nb.primaryProfession LIKE '%Actor%'
AND NOT EXISTS (SELECT * FROM title_principals tp WHERE tp.nconst = nb.nconst AND tp.category = 'actor')
AND NOT EXISTS (SELECT * FROM title_crew tc WHERE tc.nconst = nb.nconst AND tc.directors LIKE '%Damien%' OR tc.writers LIKE '%Damien%')
ORDER BY tr.averageRating DESC, tb.primaryTitle ASC
LIMIT 5