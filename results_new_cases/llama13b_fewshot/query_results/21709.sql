SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Superhero', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_principals tp
    WHERE tp.ordering = (SELECT MAX(tp2.ordering) FROM title_principals tp2 WHERE tp2.tconst = tb.tconst)
    AND tp.category = 'actor'
    AND tp.job = 'lead'
    AND tp.characters!= ''
) > 0
AND NOT EXISTS (
    SELECT 1
    FROM title_ratings tr
    WHERE tr.tconst = tb.tconst
    AND tr.averageRating < (SELECT AVG(tr2.averageRating) FROM title_ratings tr2 WHERE tr2.tconst = tb.tconst)
)
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE tb2.primaryTitle = tb.primaryTitle
    AND tb2.startYear > (SELECT MAX(tb3.startYear) FROM title_basics tb3 WHERE tb3.tconst = tb.tconst)
) = 0