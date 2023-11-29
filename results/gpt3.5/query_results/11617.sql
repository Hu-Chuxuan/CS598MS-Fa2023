SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Animation%'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('Digimon: The Movie', 'Pokémon 4Ever (2001)', 'Pokémon 3: The Movie')
ORDER BY tr.averageRating DESC
LIMIT 5