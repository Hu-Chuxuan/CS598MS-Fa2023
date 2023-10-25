SELECT DISTINCT(title_basic).title_type AS 'Movie Type', 
    CONCAT('Directed By : ',title_crew.[director]) AS "Director",
    CONCAT("Starring ",name_basic.[primaryName]," as ",character," in ",job) AS "Character",
    CONCAT((genre_basic)[genre].genre,' ',movie_rating[average_rating].average_rating,'/ 10') AS Rating
FROM title_basics INNER JOIN
    title_ratings ON title_ratings.[tconst]=title_basics.[tconst] AND title_ratings.[numvotes]>6 LEFT OUTER JOIN
    title_principals ON title_principals.[tconst]=title_basics.[tconst] AND title_principals.[category]=1 WHERE
    ((title_basics.[isadult]=0 OR title_basics.[isadult]=NULL)) AND
    	((startyear>=2017)AND (endyear<=2020))