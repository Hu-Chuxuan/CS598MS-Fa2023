SELECT * FROM ( SELECT DISTINCT title_id AS tId, rating_average AS rAvg, num_voters AS vNum FROM title_rating WHERE tConst = 6 ) AS ratings WHERE rAvg >.6 AND vnum >= 5