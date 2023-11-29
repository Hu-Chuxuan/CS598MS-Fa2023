SELECT * FROM (
  SELECT title_basics.tconst, title_basics.titleType, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, 
       AVG(title_ratings.averageRating) AS avg_rating, COUNT(title_ratings.numVotes) AS num_votes
  FROM title_basics
  JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
  WHERE title_basics.primaryTitle IN ('Gone Girl', 'The Girl with the Dragon Tattoo')
  GROUP BY title_basics.tconst
) AS liked_titles
JOIN (
  SELECT nconst, primaryName, birthYear, deathYear, primaryProfession, knownForTitles
  FROM name_basics
  WHERE primaryName IN ('David Fincher', 'Ben Affleck', 'Rosamund Pike', 'Daniel Craig')
  GROUP BY nconst
) AS preferred_directors
ON liked_titles.tconst = preferred_directors.nconst
JOIN (
  SELECT tconst, job, category
  FROM title_principals
  WHERE job IN ('Director', 'Writer')
  GROUP BY tconst
) AS crew_jobs
ON liked_titles.tconst = crew_jobs.tconst
WHERE crew_jobs.job = 'Director'
ORDER BY avg_rating DESC, num_votes DESC