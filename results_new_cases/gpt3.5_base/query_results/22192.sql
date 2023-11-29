SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Suspense%'
AND tb.primaryTitle NOT IN ('Blow  (2001)', 'Fear and Loathing in Las Vegas  (1998)', 'The Hangover (2009)', 'The Rum Diary  (2011)')
ORDER BY tr.averageRating DESC
LIMIT 5