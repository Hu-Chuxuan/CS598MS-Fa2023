SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_principals tp1 ON tb1.tconst = tp1.tconst
JOIN name_basics nb ON tp1.nconst = nb.nconst
WHERE nb.primaryName = 'her'
AND tb1.tconst NOT IN ('Pineapple Express  (2008)')
AND tb1.titleType = 'movie'