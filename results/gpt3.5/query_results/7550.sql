SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Drama%'
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('Philadelphia', 'The Lion King', 'Law Abiding Citizen', 'Sully', 'The Mummy Returns', 'Creed', 'Training Day', 'Jumanji', 'Barbershop')
ORDER BY tr.averageRating DESC
LIMIT 5