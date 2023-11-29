SELECT tb1.primaryTitle, tb1.startYear, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
JOIN title_principals tp ON tb1.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName LIKE '%The Rock%'
AND tb1.tconst != 'tt3833474'  -- Exclude the movie already mentioned in the user preference history
AND tb1.titleType = 'movie'
ORDER BY tr.averageRating DESC