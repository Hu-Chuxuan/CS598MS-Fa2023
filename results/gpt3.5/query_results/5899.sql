SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE (tb.startYear = 2010 OR tb.startYear = 2008) 
AND (tb.genres LIKE '%Action%' OR tb.genres LIKE '%Comedy%') 
AND tb.primaryTitle NOT IN ('Kick-Ass', 'Tropic Thunder', 'Indiana Jones and the Temple of Doom', 'Old School')
ORDER BY tr.averageRating DESC