SELECT tb.primaryTitle AS Recommended_Movie, tr.averageRating AS Average_Rating, tr.numVotes AS Number_of_Votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2010
AND tb.primaryTitle != '50 First Dates'
AND tb.primaryTitle != 'Office Christmas Party'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1