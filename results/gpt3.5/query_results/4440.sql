SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle NOT IN ('Kingsman: The Golden Circle', 'Logan  (2017)', 'Kingsman: The Secret Service (2014)', "The Hitman's Bodyguard")
AND genres LIKE '%Superhero%'
ORDER BY averageRating DESC
LIMIT 5