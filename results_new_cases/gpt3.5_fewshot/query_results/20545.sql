SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND tb.primaryTitle NOT IN ('Jurassic Park', "There's Something About Mary", '50 First Dates', 'Jurassic Park', 'The Wedding Singer', "National Lampoon's Vacation")