SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%' OR tb.genres LIKE '%Sci-Fi%'
AND tb.startYear > 2017
AND tb.primaryTitle NOT IN ('Guardians of the Galaxy  (2014)', 'Iron Man  (2008)', 'Thor: Ragnarok (2017)', 'The Avengers  (2012)', 'Spider-Man: Homecoming (2017)', 'Guardians of the Galaxy Vol. 2 (2017)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5