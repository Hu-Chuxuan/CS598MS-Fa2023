SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.genres
FROM title_basics tb1
JOIN title_ratings tr1 ON tb1.tconst = tr1.tconst
WHERE tb1.genres LIKE '%Drama%' 
AND tb1.startYear >= 2000 
AND tb1.startYear <= 2008 
AND tb1.primaryTitle NOT IN ('The Count of Monte Cristo (2002)', 'Good Will Hunting (1997)', 'Cast Away (2000)', 'Forrest Gump (1994)', 'Road to Perdition (2002)', 'Changeling (2008)')
ORDER BY tr1.averageRating DESC, tr1.numVotes DESC
LIMIT 5