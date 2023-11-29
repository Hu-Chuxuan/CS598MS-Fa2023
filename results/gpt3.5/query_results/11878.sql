SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.primaryTitle NOT IN ('Transformers: Age of Extinction (2014)', 'E.T. the Extra-Terrestrial (1982)', 'Transformers  (2007)', 'Monsters, Inc. (2001)')
AND tb.startYear >= 2000
ORDER BY tr.averageRating DESC
LIMIT 5