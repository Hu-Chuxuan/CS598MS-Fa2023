SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.startYear = 1985 AND tb.genres LIKE '%Adventure%'
AND nb.primaryProfession LIKE '%Actor%' AND nb.knownForTitles LIKE '%The Goonies%'
AND EXISTS (
    SELECT 1 FROM title_principals tp
    JOIN name_basics nb ON tp.nconst = nb.nconst
    WHERE tp.category = 'actor' AND nb.primaryName = 'Sean Astin'
)
ORDER BY averageRating DESC, numVotes DESC