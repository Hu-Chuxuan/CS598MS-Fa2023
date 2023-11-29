SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Ryan Gosling'
  AND tb.titleType = 'movie'
  AND tb.startYear >= 1980
  AND tb.startYear <= 2021
  AND tr.numVotes > 1000
  AND tr.averageRating >= 7
  AND tb.genres LIKE '%Drama%'
ORDER BY tr.averageRating DESC