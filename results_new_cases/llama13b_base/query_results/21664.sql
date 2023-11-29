SELECT 
    t.title_basics.title, 
    t.title_basics.primaryTitle, 
    t.title_basics.originalTitle, 
    t.title_basics.isAdult, 
    t.title_basics.startYear, 
    t.title_basics.endYear, 
    t.title_basics.runtimeMinutes, 
    t.title_basics.genres, 
    t.title_ratings.averageRating, 
    t.title_ratings.numVotes, 
    n.name_basics.primaryName, 
    n.name_basics.birthYear, 
    n.name_basics.deathYear, 
    n.name_basics.primaryProfession, 
    n.name_basics.knownForTitles
FROM 
    title_basics t
    JOIN title_ratings tr ON t.title_basics.tconst = tr.tconst
    JOIN name_basics n ON t.title_basics.primaryTitle = n.primaryName
WHERE 
    t.genres = 'Science Fiction' 
    AND t.genres = 'Action' 
    AND t.title_basics.isAdult = 0
    AND tr.averageRating > (
        SELECT 
            AVG(tr2.averageRating)
        FROM 
            title_ratings tr2
            JOIN name_basics n2 ON tr2.tconst = n2.primaryName
            WHERE 
                n2.primaryName = 'Game Night (2018)'
                OR n2.primaryName = 'Jumanji (2017)'
            GROUP BY 
                tr2.tconst
    )
ORDER BY 
    t.title_basics.startYear DESC, 
    t.title_basics.endYear DESC, 
    t.title_basics.runtimeMinutes ASC