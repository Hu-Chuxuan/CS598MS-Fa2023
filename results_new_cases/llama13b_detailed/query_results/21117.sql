SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles
    FROM title_basics t
    JOIN name_basics n ON t.directors = n.nconst
    WHERE t.titleType ='movie' AND t.isAdult = 0
    AND (t.genres LIKE '%detective%' OR t.genres LIKE '%mystery%')
    AND n.primaryProfession LIKE '%director%'
    AND n.knownForTitles LIKE '%Memento%')
  UNION ALL
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles
    FROM title_basics t
    JOIN name_basics n ON t.writers = n.nconst
    WHERE t.titleType ='movie' AND t.isAdult = 0
    AND (t.genres LIKE '%detective%' OR t.genres LIKE '%mystery%')
    AND n.primaryProfession LIKE '%writer%'
    AND n.knownForTitles LIKE '%Memento%')
) AS recommendations
WHERE recommendations.tconst NOT IN (SELECT tconst FROM title_ratings WHERE numVotes > 500)