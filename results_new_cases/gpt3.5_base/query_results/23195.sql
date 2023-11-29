SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.genres LIKE '%Drama%' AND tb.startYear > 1990
AND tr.averageRating > 7
AND tb.tconst != 'tt0137523' -- Excluding Fight Club
AND (nb.primaryName = 'David Fincher' OR nb.primaryName = 'Brad Pitt' OR nb.primaryName = 'Edward Norton')
AND tb.primaryTitle NOT IN ('Resident Evil (2002)', 'The Purge (2013)', 'Taken (2008)')
GROUP BY tb.primaryTitle
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1