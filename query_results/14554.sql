SELECT * FROM (
    SELECT
        DISTINCT TITLEID AS id,
        TITLETYPE AS type,
        PRIMARYTITLE AS title,
        ORIGINALTITLE AS origTitle,
        0 AS ageRating,
        ISADULT AS isAdult,
        STARTYEAR AS startYear,
        ENDYEAR AS endYear,
        RUNTIMEMINUTES AS runTime,
        GENRES AS genreList
    FROM
        TitleBasics
            LEFT JOIN NameBasic ON NCONST = NAMEBASICS.PRIMARYNAME
                                AND BIRTHYEAR >= DATEADD('year', -10, GETDATE())
    WHERE
        TitleTypes LIKE '%movie%' OR TitleTypes LIKE '%tv%')
    INNER JOIN MovieCrew ON TitlBasics.TITLEID=MovieCrew.TITLEID
    INNER JOIN MovPrin ON MOVIEROW.TITLEID=MOVIEPROW.TITLEID
    INNER JOIN TitleRatings ON TitlBasics.TITLEID=TitleRatings.TITLEID
WHERE
    NOT EXISTS (SELECT * from MovPrin where Category='character' and Job='[Assistant]')
GROUP BY Type, Title, OrigTitle, AgeRating, IsAdult, StartYear, EndYear, RunTime, GenreList
ORDER BY AgeRating DESC LIMIT 3