SELECT * FROM title_recommendation WHERE user_id = $userID AND title_type LIKE '%JAWS%' ORDER BY rating DESC