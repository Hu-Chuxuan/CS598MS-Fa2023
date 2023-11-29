SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Drama%' 
    AND (tb1.originalTitle = 'We Are Marshall' OR tb1.originalTitle = 'The Judge')
    AND tb1.startYear > 2014
ORDER BY tr.averageRating DESC
LIMIT 5