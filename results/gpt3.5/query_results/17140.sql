SELECT tb.primaryTitle AS recommended_movie,
       tb.startYear AS release_year,
       tr.averageRating AS rating,
       tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Mystery%'
AND tb.genres LIKE '%Thriller%'
AND tb.genres LIKE '%Drama%'
AND tb.primaryTitle NOT IN ('The Last Samurai (2003)', 'Thor: Ragnarok (2017)', 'The Fugitive  (1993)', 'Jason Bourne  (2016)', 'Black Panther (2018)', 'Air Force One  (1997)')
AND tb.startYear >= 1990
AND tr.numVotes >= 1000
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5