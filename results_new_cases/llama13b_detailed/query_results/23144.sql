SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE nb.primaryProfession = 'actor'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear > 1980
AND tb.endYear < 2020
AND tr.averageRating > 5
ORDER BY tr.averageRating DESC