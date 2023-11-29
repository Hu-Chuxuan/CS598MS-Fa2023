SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('The Dukes of Hazzard (2005)', 'The Lone Ranger (2013)')
ORDER BY tr.averageRating DESC
LIMIT 10