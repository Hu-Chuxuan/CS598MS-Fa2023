SELECT * FROM 'title_basic' WHERE'startyear' =? AND ('genre' LIKE '%Science Fiction%' OR 'titletype'='Movie') ORDER BY 'rating' DESC LIMIT 3