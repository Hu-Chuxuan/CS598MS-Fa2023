SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Ryan Gosling' 
AND tb.titleType = 'movie' 
AND tb.startYear >= 1980 
AND tb.startYear < 2011 
AND tr.averageRating >= 7 
AND tb.tconst NOT IN ('Brighton Beach Memoirs (1986)', 'The Ten Commandments (1956)')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5