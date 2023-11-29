SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%'
AND tb.primaryTitle NOT IN ('How to Lose a Guy in 10 Days (2003)', 'When Harry Met Sally... (1989)', 'Notting Hill ')
ORDER BY tr.averageRating DESC
LIMIT 10