SELECT * FROM
( SELECT tconst AS MovieID,
       AVG(averageRating) as Average Rating,
	   COUNT(*) as VoteCount,
        SUM((CASE WHEN rating >.7 THEN 0 ELSE 1 END)) /COUNT(*),
        CONCAT("'",titleType,"', '",primaryTitle,'') AS Title,
        1 AS Year,
         1 AS Genre
    FROM title_ratings WHERE avgrating >.7 GROUP BY title_ratings ) AS ratedmovies INNER JOIN ( select nconst as PersonID from name_basics where birthyear between 1950 AND 1980 ) AS people ON personid = movieid ORDER by year DESC LIMIT 2