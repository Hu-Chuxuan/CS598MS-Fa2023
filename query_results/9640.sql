SELECT * FROM (title_basics INNER JOIN title_ratings ON title_basics.tconst = title_ratings.tconst WHERE title_basics.primaryTitle LIKE '%flight%' AND title_ratings.numVotes >= 870 AND title_ratings.averageRating >.5) INNER JOIN name_basics ON title_basics.tconst = name_basics.tconst INNER JOIN title_crew ON title_crews.tconst = title_basins.tconst INNER JOIN title_principles ON title_principle's.tconst = title_crew.tconst INNER JOIN (name_basics INTERSECTS categories) AS Categories ON CATEGORIES.nconst = name_basis.nconst WHERE (Categories.category = "DRAMA" OR Categories.category = "THRILLER") ORDER BY title_basins.startYear DESC LIMIT 1