SELECT * FROM (title_recommendation JOIN title_rating WHERE user_id=?) AND ((((title_type='drama' OR title_type='romance') OR title_type='comedy')) OR ((title_genre='action/adventure') OR (title_genre='crime/mystery/thriller')))) GROUP BY movie_name HAVING avg(user_rating) > 6