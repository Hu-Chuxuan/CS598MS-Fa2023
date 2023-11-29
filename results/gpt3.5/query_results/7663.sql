SELECT primaryTitle, startYear, genres
FROM title_basics
WHERE genres IN (
    SELECT genres
    FROM title_basics
    WHERE primaryTitle = 'Captain Underpants: The First Epic Movie'
)
AND averageRating > 5.5
AND numVotes > 1500
AND tconst != 'tt0241527'
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5