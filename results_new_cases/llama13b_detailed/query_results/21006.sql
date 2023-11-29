SELECT * FROM (
  SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
    AVG(rating) AS avgRating, COUNT(*) AS numVotes
    FROM title_basics
    JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
    WHERE titleType IN ('movie','short') AND isAdult = 0
    GROUP BY tconst
) AS titles
JOIN (
  SELECT nconst, primaryName, birthYear, deathYear, primaryProfession, knownForTitles
  FROM name_basics
) AS actors ON titles.tconst NOT IN (SELECT tconst FROM title_crew WHERE directors OR writers)
JOIN (
  SELECT nconst, category, job, characters
  FROM title_principals
) AS crew ON titles.tconst NOT IN (SELECT tconst FROM title_principals WHERE category = 'director' OR category = 'writer')
WHERE titles.avgRating > 6 AND titles.numVotes > 100
AND actors.primaryName LIKE '%romantic%comedy%'
AND actors.primaryName LIKE '%horror%movie%'
AND crew.job LIKE '%director%of%photography%'
AND crew.job LIKE '%editor%'
ORDER BY titles.avgRating DESC, titles.numVotes DESC