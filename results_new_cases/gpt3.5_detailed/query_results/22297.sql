SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' 
AND (tb.primaryTitle LIKE '%Rosemary''s Baby%' OR tb.primaryTitle LIKE '%The Exorcist%')
AND tb.primaryTitle NOT IN ('Bridesmaids', 'Juno', 'Pitch Perfect')
AND tb.startYear <= 1973
ORDER BY tr.averageRating DESC