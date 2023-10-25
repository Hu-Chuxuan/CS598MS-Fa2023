SELECT * FROM (title_basic WHERE titleType = 'Movie' AND (startYear BETWEEN? AND?) OR (endYear BETWEEN? AND?)) AS TB UNION ALL SELECT * FROM (name_basics WHERE primaryName LIKE '%?%' AND (birthYear BETWEEN? AND?) AND (deathYear BETWEEN? AND?)) AS NB UNION ALL SELECT * FROM (title_rating WHERE averageRating >=?) AS TR