SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Drama', tb.genres) > 0
AND tb.startYear > 1975
AND tb.startYear < 1995
AND (tb.primaryTitle != 'Beaches' AND tb.primaryTitle != 'Terms of Endearment')