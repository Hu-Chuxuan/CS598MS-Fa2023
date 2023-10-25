SELECT * FROM
( SELECT DISTINCT ON tconst titleID, titleType, title AS Movie, rating AS Rating, count(*) as votesCount
FROM title_ratings WHERE year >= :start AND year <= :end GROUP BY titleType ORDER by votes DESC LIMIT :limit OFFSET :offset )
JOIN
( SELECT DISTINCT ON nconst nameID, primaryName, birthYear, deathYear, primaryProfession, knownForTitles, gender AS Gender
FROM name_basics WHERE gender = :gender GROUP BY nameID ORDER BY nameID ASC ) titlesMovieOnNames
ON titlesMovieOnNames.nameID=titleID
AND titlesMovieOnNames.Gender=:gender