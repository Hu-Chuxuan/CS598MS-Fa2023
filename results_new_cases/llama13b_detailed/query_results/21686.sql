SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.startYear = 2018
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Mystery%'
AND tb.genres LIKE '%Thriller%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Game% Night (2018)%'
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'director' AND tp.job LIKE '%Christopher% Nolan%'
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5