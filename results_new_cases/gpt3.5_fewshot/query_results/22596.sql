SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Documentary', tb.genres) > 0
AND FIND_IN_SET('Music', tb.genres) > 0