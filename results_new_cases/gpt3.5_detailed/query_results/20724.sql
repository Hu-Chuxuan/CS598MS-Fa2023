SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Thriller%')
AND tb.primaryTitle NOT IN ('District 9 (2009)', 'Aliens  (1986)', 'Life  (2017)')
ORDER BY tr.averageRating DESC