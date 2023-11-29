SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Summer%'
AND tb.startYear <= 1979
AND tb.startYear >= 1970
AND tb.primaryTitle <> 'Meatballs'
AND tb.primaryTitle NOT IN ('Girls Trip (2017)', 'A Nightmare on Elm Street (1984)', 'Jigsaw (2017)', 'Friday the 13th  (1980)')
ORDER BY tr.averageRating DESC
LIMIT 5