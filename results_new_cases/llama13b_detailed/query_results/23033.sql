SELECT * FROM title_basics tb
JOIN (
  SELECT nconst, primaryName, birthYear, deathYear, primaryProfession, knownForTitles
  FROM name_basics
  WHERE primaryProfession LIKE '%actor%' AND knownForTitles LIKE '%comedy%'
) np ON tb.directors = np.nconst
OR tb.writers = np.nconst
OR tb.crew = np.nconst
WHERE tb.titleType ='movie' AND tb.isAdult = 0
ORDER BY tb.averageRating DESC, tb.numVotes DESC