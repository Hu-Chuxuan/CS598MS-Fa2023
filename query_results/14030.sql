SELECT title_id AS id,
       rating AS score FROM title_ratings WHERE ((averageRating>='5') AND (averageRating<='6')) ORDER BY avgRATING DESC LIMIT 3