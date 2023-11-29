SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Will Smith'
AND tb.titleType = 'movie'
AND tb.startYear < 2005
AND tb.genres LIKE '%Sci-Fi%'
AND tb.tconst <> 'tt0343818' -- Exclude "I, Robot"
ORDER BY tr.averageRating DESC