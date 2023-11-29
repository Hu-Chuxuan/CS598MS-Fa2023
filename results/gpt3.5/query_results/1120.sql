SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tp.tconst = tb.tconst
JOIN name_basics nb ON nb.nconst = tp.nconst
WHERE (tb.genres LIKE '%Drama%' OR tb.genres LIKE '%Adventure%')
AND (nb.primaryName = 'Reese Witherspoon' OR nb.primaryName = 'Tom Hanks')
AND tb.startYear BETWEEN 1995 AND 2020
AND tb.primaryTitle NOT IN ('127 Hours', 'Cast Away', 'Road to Perdition', 'Changeling', 'Walk the Line', 'The Black Dahlia')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 10