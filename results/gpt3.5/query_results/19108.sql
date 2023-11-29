SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear <= 2010
AND tb1.startYear >= 1970
AND tb1.tconst NOT IN (
    SELECT tp.tconst
    FROM title_principals tp
    JOIN name_basics nb ON tp.nconst = nb.nconst
    WHERE nb.primaryName = 'User Input: The Godfather (1972)'
)
AND tb1.genres = ANY (SELECT genres FROM title_basics WHERE primaryTitle = 'Inglourious Basterds (2009)')
AND tb1.tconst NOT IN ('tt0110912', 'tt0088763', 'tt2798920') -- Excluding the movies from the user preference history
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5