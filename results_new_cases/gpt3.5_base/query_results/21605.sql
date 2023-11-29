SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.startYear >= 2010 
AND tb.tconst != 'tt5462602' -- exclude The Big Sick
AND tb.tconst NOT IN ('tt0120815', 'tt0265086') -- exclude Saving Private Ryan and Black Hawk Down
AND nb.primaryName <> 'Kumail Nanjiani' -- exclude movies with same actor
GROUP BY tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5