SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'Brighton Beach Memoirs'
AND tb1.startYear >= 1980
AND tb1.titleType = 'movie'
AND tb1.primaryTitle NOT IN ('The Taming of the Shrew', 'Cleopatra  (1970)', 'National Velvet ', 'Cat on a Hot Tin Roof  (1958)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5