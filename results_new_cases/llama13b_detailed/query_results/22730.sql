SELECT * FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tc.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.primaryTitle LIKE '%Fight Club%'
AND nb.primaryName NOT IN (SELECT nconst FROM name_basics WHERE knownForTitles LIKE '%Fight Club%')
AND tp.category NOT IN (SELECT job FROM title_principals WHERE job LIKE '%Fight Club%')
AND tp.characters NOT LIKE '%Fight Club%'
JOIN (
  SELECT nconst, knownForTitles
  FROM name_basics
  WHERE knownForTitles LIKE '%A Quiet Place%') q ON nb.knownForTitles LIKE q.knownForTitles
JOIN (
  SELECT nconst, job
  FROM title_principals
  WHERE job LIKE '%The Shining%') s ON tp.job LIKE s.job
JOIN (
  SELECT nconst, knownForTitles
  FROM name_basics
  WHERE knownForTitles LIKE '%Resolution%') r ON nb.knownForTitles LIKE r.knownForTitles
JOIN (
  SELECT nconst, job
  FROM title_principals
  WHERE job LIKE '%World War Z%') z ON tp.job LIKE z.job
JOIN (
  SELECT nconst, knownForTitles
  FROM name_basics
  WHERE knownForTitles LIKE '%The Witch%') w ON nb.knownForTitles LIKE w.knownForTitles
JOIN (
  SELECT nconst, job
  FROM title_principals
  WHERE job LIKE '%Cujo%') c ON tp.job LIKE c.job
ORDER BY tb.startYear DESC, tb.primaryTitle ASC