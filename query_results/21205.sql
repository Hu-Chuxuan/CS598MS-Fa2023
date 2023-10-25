SELECT t.titleID as MovieId, t.genreIDs,
    t.primaryTitle AS TitleText,
    t.originalTitle AS OriginalTitle,
    t.startYear,
    t.endYear,
    t.runtimeMinutes,
FROM title_basics AS t
WHERE t.isAdult = false