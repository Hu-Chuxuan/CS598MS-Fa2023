SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS year
FROM title_basics AS tb1
JOIN title_ratings AS tr1 ON tb1.tconst = tr1.tconst
JOIN title_principals AS tp1 ON tb1.tconst = tp1.tconst
JOIN title_basics AS tb2 ON tp1.nconst = tb2.tconst
JOIN title_ratings AS tr2 ON tb2.tconst = tr2.tconst
WHERE tb1.genres = tb2.genres
AND tb1.startYear >= 2010
AND tb1.startYear < 2016
AND tb1.tconst <> 'tt3659388' -- excluding The Martian
AND tr1.averageRating > 7.5
AND tr2.averageRating > 7.5
AND (tb2.primaryTitle = 'Mission: Impossible – Ghost Protocol' AND tb2.startYear = 2011)
   OR (tb2.primaryTitle = 'Mission: Impossible' AND tb2.startYear IS NULL)
   OR (tb2.primaryTitle = 'Gone Girl' AND tb2.startYear = 2014)
LIMIT 5