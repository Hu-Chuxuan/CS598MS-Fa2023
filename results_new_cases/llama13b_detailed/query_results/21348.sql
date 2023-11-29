SELECT * FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.primaryTitle LIKE '%Spielberg%'
AND tp.category = 'director'
AND tr.averageRating > (SELECT AVG(tr2.averageRating)
                         FROM title_ratings tr2
                         WHERE tr2.tconst IN (SELECT tc2.tconst
                                              FROM title_crew tc2
                                              WHERE tc2.directors LIKE '%Spielberg%'))
ORDER BY tr.averageRating DESC