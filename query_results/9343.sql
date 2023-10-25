SELECT * FROM 
title_recommendation WHERE rating > 6 AND director IN ('Robin Williams', 'Matt Damon') AND genre = "Drama" OR genre = "Comedy"