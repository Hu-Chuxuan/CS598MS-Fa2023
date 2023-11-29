SELECT t.title_basics.title, t.title_basics.primaryTitle, t.title_basics.originalTitle, t.title_basics.genres, t.title_ratings.averageRating, t.title_ratings.numVotes, c.category, c.job, c.characters
FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_crew c ON t.tconst = c.tconst
WHERE t.genres IN ('horror', 'comedy')
AND tr.averageRating > 6
AND n.birthYear BETWEEN 1980 AND 1999
AND c.job IN ('Actor', 'Actress')
AND c.characters NOT IN ('')

ORDER BY t.title_basics.primaryTitle, t.title_ratings.averageRating DESC