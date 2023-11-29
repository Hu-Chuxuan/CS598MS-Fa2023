SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Sci-Fi', tb.genres) > 0
AND tb.primaryTitle NOT IN ('The 40-Year-Old Virgin', 'Knocked Up')
AND tb.startYear > 2000