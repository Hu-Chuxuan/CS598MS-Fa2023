SELECT * FROM
(SELECT DISTINCT tconst AS TitleID, titleType AS Type,
primaryTitle AS PrimaryTitle, originalTitle AS OriginalTitle,
isAdult AS AdultMovie, startYear AS StartYear, endYear AS EndYear,
runtimeMinutes AS RuntimeMinutes, genres AS Genre FROM
title_basics WHERE tconst IN ('tt0000001','tt0000002')) AS T1 LEFT JOIN 
(SELECT DISTINCT nconst AS NameID, primaryName AS FirstAndLastName,
birthYear AS BirthDate, deathYear AS DeathDate, primaryProfession AS ProfessionFromMovies,
knownForTitles AS KnownForTitles FROM name_basics WHERE nconst = 'nm0000001') AS N ON T1.PrimaryTitle LIKE CONCAT('%', N.FirstAndLastName,'%')