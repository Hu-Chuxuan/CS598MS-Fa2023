SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres, 
       COUNT(r.tconst) AS numVotes, AVG(r.rating) AS averageRating
    FROM title_basics t
    JOIN title_ratings r ON t.tconst = r.tconst
    WHERE t.titleType IN ('movie','short')  -- only consider movies and shorts
    AND t.primaryTitle LIKE '%K-19%'  -- only consider titles with "K-19" in the title
    GROUP BY t.tconst
  ) AS top_recommendations
WHERE numVotes > 100  -- only consider titles with more than 100 votes
AND averageRating > 6.5  -- only consider titles with an average rating above 6.5
AND titleType IN ('movie','short')  -- only consider movies and shorts
ORDER BY averageRating DESC