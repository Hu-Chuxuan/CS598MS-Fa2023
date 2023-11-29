SELECT * FROM (
    SELECT r.titleID, r.averageRating, COUNT(*) AS totalRecommendationCount
FROM title_rating r INNER JOIN (
   SELECT titleID, MIN(userInput) AS minUserInput FROM user_input GROUP BY titleID HAVING count(*)=1 AND min(userInput)>='Blazing Saddles (1974)' LIMIT 1
) i ON r.titleID=i.titleID WHERE r.numVotes>10 AND i.minUserInput>=r.avarageRating+0.5 ORDER BY avgRating DESC,totalRecomendationCount ASC
UNION ALL
SELECT r.titleID, r.averageRating, COUNT(*) AS totalRecommendationCount
FROM title_rating r INNER JOIN (
   SELECT titleID, MAX(userInput) AS maxUserInput FROM user_input GROUP BY titleID HAVING count(*)=1 AND max(userInput)>='Blazing Saddles (1974)' LIMIT 1
) i ON r.titleID=i.titleID WHERE r.numVotes>10 AND i.maxUserInput<=r.averageRating+0.5 ORDER BY avgRating DESC,totalRecomendationCount ASC
GROUP BY titleID)