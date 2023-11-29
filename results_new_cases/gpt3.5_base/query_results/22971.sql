SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Crime%' AND tb.genres LIKE '%Thriller%'
AND tb.startYear > 1990
AND tb.primaryTitle != 'Kiss the Girls'
AND tb.primaryTitle NOT IN ('Heat', 'The Town', 'Red', 'Den of Thieves')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5