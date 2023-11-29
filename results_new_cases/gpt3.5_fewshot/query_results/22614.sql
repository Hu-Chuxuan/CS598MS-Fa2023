SELECT tb.primaryTitle
FROM title_basics tb
WHERE tb.genres LIKE '%Sci-Fi%'
AND tb.startYear > 1980
AND tb.startYear < 2005
AND tb.primaryTitle NOT IN ('H. G. Wells\' The War of the Worlds', 'Minority Report', 'Blade Runner', 'The Fifth Element', 'The War of the Worlds')
LIMIT 1