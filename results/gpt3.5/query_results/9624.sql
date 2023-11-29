SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle LIKE '%E.T. the Extra-Terrestrial%'
	OR primaryTitle LIKE '%A.I. Artificial Intelligence%'
	OR primaryTitle LIKE '%The Last Starfighter%'
	OR genres LIKE '%Family%' 
	OR genres LIKE '%Sci-Fi%'
	OR genres LIKE '%Adventure%'
ORDER BY averageRating DESC
LIMIT 10