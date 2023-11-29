SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.genres
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Action%'
AND tr.averageRating > 6.0
AND tb1.startYear >= 2010
AND tb1.startYear < 2020
AND tb1.tconst NOT IN (
    SELECT tp.tconst
    FROM title_principals AS tp
    JOIN name_basics AS nb ON tp.nconst = nb.nconst
    WHERE nb.primaryName = 'Paul Rudd' 
)
AND tb1.tconst NOT IN (
    SELECT tb.tconst
    FROM title_basics AS tb
    WHERE tb.primaryTitle = 'Black Panther (2018)' 
    OR tb.primaryTitle = 'The Incredibles (2004)' 
    OR tb.primaryTitle = 'Game Night (2018)' 
    OR tb.primaryTitle = 'Girls Trip (2017)'
)
ORDER BY tr.numVotes DESC
LIMIT 5