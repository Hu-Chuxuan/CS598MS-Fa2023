SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Romance%' 
AND tb.genres NOT LIKE '%Drama%'
AND tb.startYear > 1997
AND tb.primaryTitle NOT IN ('Titanic', 'La La Land', 'Grease', 'Mamma Mia!')
ORDER BY tr.averageRating DESC
LIMIT 5