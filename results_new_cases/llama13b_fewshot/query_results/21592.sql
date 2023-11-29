SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Drama', tb.genres) > 0
AND FIND_IN_SET('Fantasy', tb.genres) > 0
AND startYear > 2000
AND startYear < 2020
AND NOT (tb.primaryTitle = 'Pan''s Labyrinth' OR tb.primaryTitle = 'Argo' OR tb.primaryTitle = 'Kingsman: The Secret Service')