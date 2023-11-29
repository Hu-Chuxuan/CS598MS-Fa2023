SELECT title_id AS id,
    CONCAT('Movie ', title_id) AS title_id,
    CONCAT('Average Rating = ', AVG(rating)) AS avg_rating,
    CONCAT('Number of Votees = ', COUNT(votee_id)) AS votee_count
FROM title_votes WHERE rating > 6 AND num_voted >= 1 AND watched <= 0 OR watched IS NULL GROUP BY title_id ORDER BY avg_rating DESC LIMIT 10 OFFSET 0