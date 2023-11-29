SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp1 ON tb.tconst = tp1.tconst
JOIN title_principals tp2 ON tp1.nconst = tp2.nconst
WHERE tp2.tconst IN 
    (SELECT tconst
     FROM title_basics
     WHERE primaryTitle IN ('Zombieland', '30 Minutes or Less'))
AND tb.primaryTitle NOT IN ('Zombieland', '30 Minutes or Less', 'The Bodyguard', 'Waterworld', 'Field of Dreams', 'Dances with Wolves')
AND startYear >= 2000
AND titleType = 'movie'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5