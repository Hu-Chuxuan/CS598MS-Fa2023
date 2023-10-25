SELECT * FROM
    (SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, avg(rating), count(*) AS ratingCount
        FROM title_ratings WHERE avg(rating)>=6 AND isAdult = false GROUP BY tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres) AS movies
WHERE movies.titleType LIKE '%comedy%' OR movies.primaryTitle LIKE '%action%' OR movies.originalTitle LIKE '%horror%'
ORDER BY rating DESC LIMIT 5