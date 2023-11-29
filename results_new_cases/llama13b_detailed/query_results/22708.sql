SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.isAdult = 0
AND tr.averageRating > (
    SELECT AVG(tr2.averageRating)
    FROM title_ratings tr2
    WHERE tr2.tconst IN (
        SELECT tconst
        FROM title_basics
        WHERE titleType ='movie' AND isAdult = 0
    )
)
AND tb.genres LIKE '%Comedy%'
AND EXISTS (
    SELECT 1
    FROM name_basics nb2
    WHERE nb2.nconst = nb.nconst AND nb2.primaryProfession = 'actor'
    AND nb2.knownForTitles LIKE '%Pineapple Express%'
)
AND EXISTS (
    SELECT 1
    FROM name_basics nb3
    WHERE nb3.nconst = nb.nconst AND nb3.knownForTitles LIKE '%Super Troopers%'
)
ORDER BY tr.averageRating DESC