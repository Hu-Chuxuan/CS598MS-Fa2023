SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'The Departed'
AND tb1.titleType = 'movie'
AND tb1.startYear > 2006
AND tb1.tconst NOT IN (SELECT tp.tconst
                       FROM title_principals tp
                       JOIN name_basics nb ON tp.nconst = nb.nconst
                       WHERE nb.primaryName = 'user_input'
                       AND tp.category = 'actor')
AND tb1.tconst NOT IN (SELECT tconst
                       FROM title_basics
                       WHERE primaryTitle IN ('Thor: Ragnarok (2017)'))
GROUP BY tb1.primaryTitle
ORDER BY AVG(tb1.averageRating) DESC
LIMIT 5