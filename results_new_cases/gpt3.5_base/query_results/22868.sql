SELECT tb1.tconst, tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.originalTitle = tb2.originalTitle
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb2.primaryTitle = 'Les Misérables'
AND tb1.titleType = 'movie'
AND tb1.genres LIKE '%Musical%'
AND tb1.startYear <= 2012
AND tb1.startYear >= 2000
AND tb1.tconst NOT IN ('tt0120815', 'tt0780622')