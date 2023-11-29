SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2021
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Comedy%'
AND tb.tconst != 'tt2283362' -- Exclude Jumanji (2017)
AND nb.primaryName = 'Dwayne Johnson'
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5