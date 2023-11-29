SELECT tb.primaryTitle AS recommended_movie,
       tr.averageRating AS rating,
       tb.genres AS genre
  FROM title_basics tb
       JOIN title_ratings tr ON tb.tconst = tr.tconst
 WHERE tb.genres LIKE '%Crime%'
   AND tb.startYear <= 2013
   AND tb.tconst NOT IN ('tt0359950', 'tt0468569', 'tt0758758')  -- Exclude user's historical preferences
 ORDER BY tr.averageRating DESC
 LIMIT 3