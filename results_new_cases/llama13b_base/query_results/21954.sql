SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.title AS "Similar Movie"
FROM title_basics t1
JOIN (
    SELECT title, AVG(rating) AS avg_rating
    FROM title_ratings
    WHERE title = 'Shakespeare in Love'
) t2 ON t1.title = t2.title
WHERE t1.genres = 'Comedy' AND t1.startYear BETWEEN 1970 AND 2000
AND t2.avg_rating > (
    SELECT AVG(rating)
    FROM title_ratings
    WHERE title = 'Grease'
)
AND t2.avg_rating < (
    SELECT AVG(rating)
    FROM title_ratings
    WHERE title = 'Mamma Mia!'
)
ORDER BY t2.avg_rating DESC