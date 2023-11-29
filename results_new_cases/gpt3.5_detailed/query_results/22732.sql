SELECT tb.primaryTitle AS recommended_movie,
       tb.startYear AS release_year,
       tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.genres NOT LIKE '%War%'
AND tb.primaryTitle NOT IN ('The Shining', 'The Witch', 'Resolution', 'Mission: Impossible', 'The Manchurian Candidate', 'Gone Girl')
AND tb.startYear >= 2012
ORDER BY tr.averageRating DESC
LIMIT 5