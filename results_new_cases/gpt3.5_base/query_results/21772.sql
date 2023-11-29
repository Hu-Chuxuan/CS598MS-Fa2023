SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%'
AND tb.tconst NOT IN ('tt1663202', 'tt5462602', 'tt2582802')  -- Excluding user's historical preferences
AND (tb.startYear >= 2010 AND tb.startYear <= 2020)  -- Considering recent drama movies
AND tr.averageRating >= 7.5  -- Considering highly rated movies
ORDER BY tr.numVotes DESC
LIMIT 5