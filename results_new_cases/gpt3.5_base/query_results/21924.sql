SELECT tb.primaryTitle AS recommendation, tb.startYear AS releaseYear, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tp.tconst = tb.tconst
JOIN name_basics nb ON nb.nconst = tp.nconst
WHERE tb.titleType = 'movie'
AND (tb.primaryTitle LIKE '%Ace Ventura: Pet Detective%'
OR tb.primaryTitle LIKE '%Superbad%')
AND tb.primaryTitle NOT IN ('Super Troopers (2001)', 'Beerfest (2006)', 'Zombieland (2009)')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 10