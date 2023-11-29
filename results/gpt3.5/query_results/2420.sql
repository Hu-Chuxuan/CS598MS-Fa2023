SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName = 'Ashley Judd' OR primaryName = 'Leonardo DiCaprio' OR primaryName = 'Brad Pitt'
AND (startYear = 2002 OR startYear = 1995 OR startYear = 1999 OR startYear = 2006 OR startYear = 2010)
AND titleType = 'movie'
AND primaryTitle != 'High Crimes'
ORDER BY averageRating DESC
LIMIT 5