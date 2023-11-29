SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Drama%' AND n.primaryProfession LIKE '%Actor%'
AND EXISTS (
    SELECT 1 FROM title_principals tp
    JOIN name_basics nb ON tp.nconst = nb.nconst
    WHERE nb.primaryName = 'Emilia Clarke'
)
ORDER BY averageRating DESC, numVotes DESC