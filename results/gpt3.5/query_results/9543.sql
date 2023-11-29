SELECT tb.primaryTitle AS movie_title, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Musical%'
AND tb.primaryTitle != 'Sweeney Todd: The Demon Barber of Fleet Street'
ORDER BY tr.averageRating DESC
LIMIT 5