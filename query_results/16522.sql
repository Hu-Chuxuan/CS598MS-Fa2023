SELECT * FROM
( SELECT tconst AS MovieID, primaryTitle as Title, genre AS Genre,
    AVG(numVotes)/SUM(numVotes)*10 AS Rating, AverageRating AS VoteCount,
    SUM((AVG(numVotes)/SUM(numVotes))*10+0.75)-AverageRating/2 AS DifficultyLevel,
    COUNT(*) AS TotalViews, CONVERT(YEAR,(startDate),'%Y') As StartYear,
    CONVERT(YEAR,(endDate),'%Y') As EndYear, TIMESTAMPDIFF('DAY','%s','%s') AS RuntimeInDays,
    CONCAT(CONCAT(CONCAT(CONCAT(CONCAT(genres,'|'),
                            CONCAT(primaryTitle,'|'),
                            CONCAT(originalTitle,'|')),'|'),
                CONCAT(CONCAT(CONCAT(CONCAT(name_basics,'|'),
                        CONCAT(birthYear,'|'))),'|'),
                CONCAT(CONCAT(CONCAT(CONCAT(name_basics,'|'),
                        CONCAT(deathYear,'|'))),'|')) ) AS FullMovieTitle,
    CONCAT(CONCAT(CONCAT(CONCAT(directors,'|'),
                        CONCAT(writers,'|'))),'|') AS DirectorsAndWriters,
    PRIMARY KEY (title_basics.*, name_basics.*, crew_members.*, cast_members.*,
    rating_voters.*)
FROM   title_basic, name_basics, director_and_writer, casting_member, crew_members,
rating_voter WHERE title_basics.movieid = director_and_writer.movieid AND
casting_member.actor_or_actress=name_basics.primaryName