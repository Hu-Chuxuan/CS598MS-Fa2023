SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle NOT IN ('Death Wish ', 'The Notebook (2004)', 'Pet Sematary  (1989)', 'It  (2017)', 'Steel Magnolias  (2012)', 'Bates Motel ', 'Steel Magnolias (1989)', 'Misery  (1990)')
AND startYear <= 2017
ORDER BY averageRating DESC
LIMIT 5