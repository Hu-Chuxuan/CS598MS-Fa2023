SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
JOIN title_principals tp ON tb1.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Zac Efron'
AND tb1.titleType = 'movie'
AND tb1.primaryTitle != 'Mike and Dave Need Wedding Dates'
AND tr.numVotes > 5000
AND tb1.genres LIKE '%Comedy%'
AND tb1.startYear > 2000
AND tb1.startYear < 2010
AND tb1.primaryTitle NOT IN ('The 40-Year-Old Virgin (2005)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5