SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Thriller%'
AND (tb.primaryTitle NOT IN ('Friday the 13th', 'The Silence of the Lambs', 'Halloween', 'A Nightmare on Elm Street'))
ORDER BY tr.averageRating DESC
LIMIT 5