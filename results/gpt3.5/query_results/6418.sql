SELECT tb3.primaryTitle, tb3.startYear, tb3.runtimeMinutes, tb3.genres, tr.averageRating
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.originalTitle = 'Hot Fuzz' AND tb1.startYear = 2007
JOIN title_basics tb3 ON tb3.originalTitle = 'Shaun of the Dead' AND tb3.startYear = 2004
JOIN title_ratings tr ON tb3.tconst = tr.tconst
WHERE tb3.genres = tb2.genres
AND tb3.tconst NOT IN ('tt0096895', 'tt0119528', 'tt0137523')
ORDER BY tr.averageRating DESC
LIMIT 5