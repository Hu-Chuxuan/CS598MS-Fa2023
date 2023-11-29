SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Thriller%' OR tb.genres LIKE '%Horror%')
AND (tb.startYear LIKE '198%' OR tb.startYear LIKE '200%')
AND tb.primaryTitle NOT IN ('Memento', 'Identity', 'Friday the 13th', 'A Nightmare on Elm Street')
ORDER BY tr.averageRating DESC
LIMIT 10