SELECT * FROM imdb WHERE title_type = "DRAMA" AND user_preferences LIKE '%[Good Will Hunting|Fried Green Tomatoes|Snatch%]' ORDER BY rating DESC LIMIT 1