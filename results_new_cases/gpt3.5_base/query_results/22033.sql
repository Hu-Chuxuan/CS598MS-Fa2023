SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'Pulp Fiction')
AND tb.startYear BETWEEN 1990 AND 1998
AND tb.tconst NOT IN ('It (1990)', '30 Minutes or Less (2011)', 'Zombieland (2009)')
AND nb.primaryName = ANY (SELECT primaryName FROM name_basics WHERE knownForTitles LIKE '%Pulp Fiction%')
GROUP BY tb.primaryTitle, tr.averageRating, tr.numVotes
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10