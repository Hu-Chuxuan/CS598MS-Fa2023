SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Werewolf%' OR tb.genres LIKE '%Vampire%'
AND tb.primaryTitle NOT IN ('Teen Wolf (1985)', 'Twilight  (2008)')
ORDER BY tr.averageRating DESC
LIMIT 1