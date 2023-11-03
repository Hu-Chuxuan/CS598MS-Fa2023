SELECT DISTINCT * FROM title_ratings WHERE rating >= "8" AND (title_basics.primaryTitle = 'Fifty' OR title_basins.originalTitle='Fifty') AND title_crew.director IN ('Sam Taylor-Johnson', 'James Foley')