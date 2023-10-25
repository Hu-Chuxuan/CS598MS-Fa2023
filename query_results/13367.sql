SELECT * FROM movies WHERE 
(title_type = "movie" AND tconst IN ('Toy Story','Monster's inc') OR tconst='coco')