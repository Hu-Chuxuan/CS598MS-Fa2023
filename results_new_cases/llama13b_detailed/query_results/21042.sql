SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE nb.primaryProfession = 'actor'
AND tr.averageRating > 5
AND tb.genres LIKE '%Comedy%'
AND tb.startYear > 2010
ORDER BY tr.averageRating DESC, tb.primaryTitle ASC