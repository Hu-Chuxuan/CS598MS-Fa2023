SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON t.primaryName = n.primaryName
WHERE t.titleType ='movie' AND t.isAdult = 0 AND t.genres LIKE '%Science Fiction%'
AND tr.averageRating > (SELECT AVG(tr2.averageRating) FROM title_ratings tr2 WHERE tr2.tconst IN (SELECT tconst FROM title_basics WHERE primaryName = 'Ridley Scott'))
AND n.knownForTitles LIKE '%Blade Runner%'
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE tconst = t.tconst AND category = 'actor')
LIMIT 5