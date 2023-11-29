SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE (tc.directors LIKE '%nm0000229%' OR tc.writers LIKE '%nm0000229%') -- Spielberg's involvement
AND (tb.startYear > 1980 AND tb.startYear < 1990) -- movies released around the time of user's preferences
AND tb.titleType = 'movie' -- only consider movies
AND tb.primaryTitle != 'E.T. the Extra-Terrestrial' -- exclude the user's favorite movie
AND (tb.genres LIKE '%Sci-Fi%' OR tb.genres LIKE '%Fantasy%') -- Sci-Fi or Fantasy genre
GROUP BY tb.primaryTitle
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5