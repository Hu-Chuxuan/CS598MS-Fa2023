SELECT 
    title_basics.title, 
    title_basics.primaryTitle, 
    title_basics.originalTitle, 
    title_basics.isAdult, 
    title_basics.startYear, 
    title_basics.endYear, 
    title_basics.runtimeMinutes, 
    title_basics.genres, 
    title_ratings.averageRating, 
    title_ratings.numVotes, 
    name_basics.primaryName, 
    name_basics.birthYear, 
    name_basics.deathYear, 
    name_basics.primaryProfession, 
    name_basics.knownForTitles
FROM 
    title_basics
    JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
    JOIN name_basics ON title_basics.tconst = name_basics.tconst
WHERE 
    title_basics.title LIKE '%Seven%'  -- Matches movies with "Seven" in the title
    AND title_ratings.averageRating > 7.5  -- Matches movies with an average rating above 7.5
    AND name_basics.primaryName NOT IN (SELECT nconst FROM name_basics WHERE knownForTitles LIKE '%The Purge%')  -- Excludes movies with "The Purge" in the known for titles
    AND name_basics.primaryName NOT IN (SELECT nconst FROM name_basics WHERE knownForTitles LIKE '%Panic Room%')  -- Excludes movies with "Panic Room" in the known for titles
    AND title_basics.genres LIKE '%Thriller%'  -- Matches movies with "Thriller" in the genres
ORDER BY 
    title_ratings.averageRating DESC, 
    title_basics.startYear DESC