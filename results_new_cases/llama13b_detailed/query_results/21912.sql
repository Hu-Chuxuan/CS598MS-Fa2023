SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.isAdult = 0
AND tr.averageRating > (SELECT AVG(tr2.averageRating) FROM title_ratings tr2 WHERE tr2.tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle LIKE '%Dumb and Dumber%'))
AND tr.averageRating < (SELECT AVG(tr3.averageRating) FROM title_ratings tr3 WHERE tr3.tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle LIKE '%Zombieland%'))
AND nb.primaryProfession LIKE '%actor%'
AND nb.knownForTitles LIKE '%The Last House on the Left%'

This SQL query will SELECT all the movies that are rated higher than Dumb and Dumber (1994) and lower than Zombieland (2009) based on the user's preference history, which includes The Last House on the Left (1972) and The Last House on the Left (2009). The query will also filter out adult movies and only SELECT movies with at least one actor in the main cast