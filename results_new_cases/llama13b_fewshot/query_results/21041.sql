SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle IN ('Jumanji  (2017)', 'Baywatch  (2017)', 'Rampage (2018)') LIMIT 1)) > 0
AND (tb.startYear > 2015 AND tb.startYear < 2020)
ORDER BY tb.averageRating DESC