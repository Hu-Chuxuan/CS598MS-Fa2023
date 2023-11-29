SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Drama%' OR tb.genres LIKE '%Biography%') 
AND tb.primaryTitle NOT IN ('I Can Only Imagine (2018)', 'We Are Marshall (2006)', 'The Judge  (2014)')
AND tb.startYear >= 2000
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 10