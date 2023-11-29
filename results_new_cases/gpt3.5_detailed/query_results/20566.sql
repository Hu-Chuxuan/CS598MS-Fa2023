SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.originalTitle = tb2.primaryTitle
WHERE tb2.primaryTitle = 'Avengers: Infinity War (2018)' OR tb2.primaryTitle = 'The Post (2017)'
AND tb1.titleType = 'movie'