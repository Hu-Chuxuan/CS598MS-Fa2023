SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt1226229', 'tt0910936', 'tt0247745') -- excluding input movies
AND tb.primaryTitle NOT IN ('Anchorman: The Legend of Ron Burgundy (2004)', 'Uncle Buck', 'Step Brothers (2008)', 'Super Troopers (2001)', 'Pineapple Express (2008)', "National Lampoon's Vacation (1983)", "National Lampoon's Christmas Vacation (1989)") -- excluding historical preferences
GROUP BY tb.primaryTitle, tr.averageRating
ORDER BY tr.averageRating DESC
LIMIT 5