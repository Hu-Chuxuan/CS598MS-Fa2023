SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN name_basics nb ON tc.directors LIKE CONCAT('%', nb.nconst, '%')
WHERE nb.primaryName = 'Stephen King'
AND tb.genres LIKE '%Horror%'
AND tb.primaryTitle NOT IN ('The Other Woman  (2014)', 'When Harry Met Sally... (1989)', '50 First Dates (2004)')
ORDER BY tb.startYear DESC
LIMIT 5