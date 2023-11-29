SELECT * FROM
    ( SELECT 
        t.tconst AS TitleID,
        nd.nconst AS NameID,
        nd.primaryName AS PrimaryName,
        nd.birthYear AS BirthYear,
        nd.deathYear As DeathYear,
        nd.primaryProfession AS PrimaryProfession,
        nd.knownForTitles AS KnownForTitles,
        r.averageRating AS RatingAverage,
        r.numVotes AS RatingsNumOfUsers
     FROM
        `title` t JOIN
            (`name_basic` n ON t.`tconst` = n.`nconst`) JOIN
                (`rating` r WHERE t.`tconst` = r.`tconst`)
                   LEFT OUTER JOIN
                      (`title_crew` cc WHERE t.`tconst` = cc.`tconst`) JOIN
                          (`name_basics` nd WHERE cc.`nconst` = nd.`nconst`) ON r.`nconst`=nd.`nconst`