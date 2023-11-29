SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres LIKE '%Horror%' AND tb1.tconst != tb2.tconst
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb2.primaryTitle IN ('Jerry Maguire', 'Field of Dreams')
ORDER BY tr.averageRating DESC
LIMIT 5