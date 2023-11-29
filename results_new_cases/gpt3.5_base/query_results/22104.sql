SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Drama%' OR genres LIKE '%Crime%'
AND startYear > 2000
AND primaryTitle NOT IN ('Three Billboards Outside Ebbing, Missouri (2017)', 'Catch Me If You Can (2002)', 'Choke  (2008)')
ORDER BY averageRating DESC
LIMIT 5