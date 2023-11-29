SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.primaryTitle NOT IN ('Night at the Museum (2006)', 'School of Rock (2003)', 'Bridesmaids  (2011)')
AND tb.startYear >= 2000 
AND tb.genres LIKE '%Comedy%'
ORDER BY tr.averageRating DESC 
LIMIT 5