SELECT tb.primaryTitle AS recommended_movie, tb.startYear, tb.genres, tr.averageRating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_principals AS tp ON tp.tconst = tb.tconst
JOIN name_basics AS nb ON nb.nconst = tp.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1990
AND tb.genres LIKE '%Thriller%'
AND (nb.primaryName = 'Ashley Judd' OR nb.primaryName = 'Morgan Freeman')
AND tb.primaryTitle NOT IN ('Kiss the Girls', 'Double Jeopardy')
GROUP BY tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
ORDER BY tr.averageRating DESC
LIMIT 5