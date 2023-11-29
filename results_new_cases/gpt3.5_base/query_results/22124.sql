SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%'
AND tb.startYear >= 2017
AND tb.primaryTitle != 'Justice League'
AND tb.primaryTitle NOT IN ('Citizen Kane', 'The Fountain')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5