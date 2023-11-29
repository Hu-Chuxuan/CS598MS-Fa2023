SELECT tb.primaryTitle
FROM title_basics tb
WHERE tb.genres NOT LIKE '%Ape%'
AND tb.primaryTitle NOT IN ('High School Musical 2', 'High School Musical 3: Senior Year', 'Where the Red Fern Grows', 'High School Musical')
