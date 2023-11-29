SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%')
AND tb.startYear > 2000
AND tb.primaryTitle NOT IN ('It (1990)', 'It (2017)', 'Mama (2013)')
ORDER BY tr.averageRating DESC
LIMIT 2

UNION

SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('It (1990)', 'It (2017)', 'Mama (2013)')
ORDER BY tr.averageRating DESC
LIMIT 2