SELECT * FROM title_recommendation WHERE user_id = $userID AND rating >= $minimumRating ORDER BY rating DESC LIMIT $limit