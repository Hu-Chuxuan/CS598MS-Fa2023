SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
JOIN title_principals tp ON tb1.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear >= 2010
AND tb1.genres LIKE '%Action%'
AND tr.averageRating >= 6.5
AND nb.primaryProfession LIKE '%actor%'
AND nb.knownForTitles NOT IN ('tt0110357', 'tt0094737', 'tt0104257', 'tt0110912', 'tt0114814')
AND tb1.tconst NOT IN ('tt0110357', 'tt0094737', 'tt0104257', 'tt0110912', 'tt0114814')
AND tb1.tconst != 'tt4555426'
ORDER BY tr.averageRating DESC, tb1.startYear DESC
LIMIT 5