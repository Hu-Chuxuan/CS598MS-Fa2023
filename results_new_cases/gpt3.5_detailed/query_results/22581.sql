SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('The Royal Tenenbaums (2001)', 'Meet the Fockers (2004)', 'The Life Aquatic with Steve Zissou (2004)', 'What About Bob%3F (1991)', 'Stripes  (1981)', 'Rushmore  (1998)')
ORDER BY tr.averageRating DESC
LIMIT 5