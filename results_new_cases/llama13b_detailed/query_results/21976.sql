SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE nb.primaryName = 'Brad Pitt'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear >= 1980
AND tb.endYear <= 1989
ORDER BY tr.averageRating DESC