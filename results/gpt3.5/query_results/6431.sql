SELECT tb1.primaryTitle, tb1.startYear, tb1.runtimeMinutes, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Sport%'
AND (tb1.primaryTitle != 'The Natural' OR tb1.primaryTitle != 'Field of Dreams' OR tb1.primaryTitle != 'Major League')
ORDER BY tr.averageRating DESC
LIMIT 5