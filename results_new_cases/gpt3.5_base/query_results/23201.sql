SELECT tb.primaryTitle AS Recommended_Movies
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON nb.nconst = tp.nconst
WHERE tb.tconst != 'The Purge (2013)'
AND tb.genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'The Purge (2013)')
AND tr.averageRating >= 7.5
AND nb.primaryName NOT IN ('White Chicks (2004)', 'Snatch  (2000)', 'Pineapple Express  (2008)')
GROUP BY tb.primaryTitle
ORDER BY tr.averageRating DESC
LIMIT 5