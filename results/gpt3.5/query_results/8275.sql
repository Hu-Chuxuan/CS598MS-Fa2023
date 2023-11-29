SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating 
FROM title_basics tb1 
JOIN title_crew tc ON tb1.tconst = tc.tconst
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tc.directors IN 
    (SELECT directors 
    FROM title_crew 
    WHERE tconst IN 
        (SELECT tconst 
        FROM title_basics 
        WHERE primaryTitle = 'Baby Driver' AND startYear = 2017))
AND tb1.titleType = 'movie' 
AND tb1.startYear < 2017 
AND tb1.genres LIKE '%Action%' 
AND tb1.tconst NOT IN ('tt0098635', 'tt0808151', 'tt0462590') 
ORDER BY tr.averageRating DESC