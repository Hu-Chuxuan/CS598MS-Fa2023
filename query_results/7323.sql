SELECT * FROM (title_recommendation JOIN title_rating ON title_recommendation.titleID = title_rating.titleID WHERE userInput LIKE '%%Super Trooper%' AND rating >.8)