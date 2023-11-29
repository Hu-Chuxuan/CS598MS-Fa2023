SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear <= 1984
AND tb.tconst NOT IN ('WALL-E (2008)', 'When Harry Met Sally... (1989)', 'Pretty in Pink (1986)', 'An Officer and a Gentleman', 'The Witch  (2015)')
ORDER BY tr.averageRating DESC
LIMIT 5