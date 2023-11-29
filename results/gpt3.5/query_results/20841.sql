SELECT tb.primaryTitle AS recommended_movie, 
       tb.startYear AS release_year, 
       tb.genres AS genre, 
       tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Fantasy%') 
      AND tb.startYear >= 1980 
      AND tb.startYear <= 1990 
      AND tb.tconst NOT IN ('tt0087332', 'tt0443453') 
      AND tb.tconst NOT IN ('tt0087332', 'tt0443453') 
      AND tb.tconst NOT IN ('tt0105793') 
      AND tr.numVotes > 1000 
      AND tb.tconst NOT IN ('tt0087332', 'tt0443453') 
      AND tr.averageRating >= 6.5 
      AND tb.tconst NOT IN ('tt0087332', 'tt0443453')
      AND tb.tconst NOT IN ('tt1187043', 'tt2820852')
      AND (tb.genres NOT LIKE '%Adult%' OR tb.genres IS NULL)
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5