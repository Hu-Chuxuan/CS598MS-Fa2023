SELECT tb1.primaryTitle AS Recommended_Movie, tb1.startYear AS Release_Year, tb1.genres AS Genres, tr.averageRating AS Average_Rating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%comedy%' OR tb1.genres LIKE '%action%'
AND (tb1.primaryTitle NOT IN ('Meet the Fockers (2004)', 'Tropic Thunder (2008)')
OR tb1.startYear NOT IN (2004, 2008))
ORDER BY tr.averageRating DESC, tb1.startYear DESC
LIMIT 10