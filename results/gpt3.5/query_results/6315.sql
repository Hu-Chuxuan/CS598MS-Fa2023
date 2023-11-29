SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS average_rating, tr.numVotes AS total_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Family%')
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt0477347', 'tt0212338', 'tt0120363')  -- excluding the movies in user's preference history
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5