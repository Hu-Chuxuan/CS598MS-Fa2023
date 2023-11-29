SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Comedy%' 
AND tr.averageRating >= 7 
AND tb.primaryTitle NOT IN ('Hollow  (2014)', 'A Walk in the Clouds (1995)', 'The Little Mermaid  (1989)', 'Hercules  (1997)')