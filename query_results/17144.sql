SELECT t.* FROM
( SELECT rating.title AS "Movie Title", rating.primaryTitle AS "Primary Movie Title",rating.startYear as "Start Year ",rating.endYear as "End Year ",rating.runtimeMinutes as "Runtime Minutes", rating.averageRating as "Average Rating",rating.numVotes as "Num Votes", cast.name AS "Director Name", cast.birthYear as "Birth Year", cast.deathYear as "Death Year", cast.job AS "Job", cast.characters as "Characters", cast.category AS "Category", crew.ordering as "Ordering Number", crew.nconst as "Number of Crew Members", crew.job AS "Crew Member Job", crew.categories as "Categories" from ratings rating LEFT JOIN casting cast ON rating.primaryTitle = cast.primaryName AND rating.primaryTitle IS NOT NULL LEFT JOIN crew crew ON rating.castingID=crew.id WHERE rating.numVotes >= 10 ORDER BY rating.averageRating DESC LIMIT 1