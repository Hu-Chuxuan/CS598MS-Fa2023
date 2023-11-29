SELECT tb1.primaryTitle AS recommendation_title, tb1.startYear AS recommendation_year, tb1.genres AS recommendation_genres, tr.averageRating AS recommendation_rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_principals AS tp1 ON tb1.tconst = tp1.tconst
JOIN name_basics AS nb1 ON tp1.nconst = nb1.nconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear <= 2005
AND tb1.genres LIKE '%Adventure%'
AND (nb1.primaryName = 'Peter Jackson' OR nb1.primaryName = 'Tim Burton' OR nb1.primaryName = 'Ron Howard')
AND NOT tb1.primaryTitle IN ('The Lord of the Rings: The Fellowship of the Ring', 'Alice in Wonderland', 'Willow')
GROUP BY tb1.primaryTitle
ORDER BY tr.averageRating DESC, tb1.startYear DESC
LIMIT 5