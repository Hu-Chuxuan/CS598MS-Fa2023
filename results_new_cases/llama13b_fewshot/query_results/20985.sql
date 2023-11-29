SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Documentary', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE tb2.genres = tb.genres
    AND tb2.primaryTitle = 'Making a Murderer'
    OR tb2.primaryTitle = 'Super Size Me (2004)'
) > 0