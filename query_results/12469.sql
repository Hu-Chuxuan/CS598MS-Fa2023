SELECT * FROM title WHERE genre = "Drama" AND tconst IN ('A Bronx Tale','The Godfather') OR tconst LIKE '%Taxi%' ORDER BY averageRatings DESC LIMIT 0,10