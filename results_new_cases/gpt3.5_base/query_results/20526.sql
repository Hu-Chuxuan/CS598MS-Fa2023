SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Drama%'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('Talladega Nights: The Ballad of Ricky Bobby (2006)', 'The Hangover (2009)', 'Little Miss Sunshine (2006)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5