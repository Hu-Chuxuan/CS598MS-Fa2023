SELECT tb1.primaryTitle AS recommended_movie, 
       tb1.startYear AS release_year, 
       tb1.genres,
       tr.averageRating AS rating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear = 1979
AND tb1.genres LIKE '%Musical%'
AND tb1.tconst NOT IN ('tt0172495', 'tt4765284', 'tt3783958', 'tt0043067', 'tt8367406', 'tt2990140')
ORDER BY tr.averageRating DESC
LIMIT 5