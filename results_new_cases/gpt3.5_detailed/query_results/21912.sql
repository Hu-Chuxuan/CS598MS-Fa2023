SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.primaryTitle = 'Dumb and Dumber' AND tb.startYear = 1994)
   OR (tb.primaryTitle = 'Zombieland' AND tb.startYear = 2009)
   OR tb.primaryTitle IN ('The Last House on the Left', 'It Follows', 'The Last House on the Left')
ORDER BY tr.averageRating DESC
LIMIT 10