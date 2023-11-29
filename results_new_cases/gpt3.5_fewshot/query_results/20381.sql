SELECT tb.primaryTitle
FROM title_basics tb
WHERE tb.startYear <= 2009
AND tb.genres IN ('Action', 'Adventure', 'Family', 'Fantasy')
AND tb.isAdult = 0
AND tb.tconst NOT IN ('tt0451279', 'tt0924004', 'tt1392170', 'tt1951264')