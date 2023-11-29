SELECT * FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
JOIN name_basics
ON title_basics.primaryName = name_basics.primaryName
WHERE title_ratings.averageRating > (SELECT AVG(title_ratings.averageRating) FROM title_ratings WHERE title_ratings.tconst IN (SELECT tconst FROM title_basics WHERE genres LIKE '%Action%'))
AND title_basics.genres LIKE '%Action%'