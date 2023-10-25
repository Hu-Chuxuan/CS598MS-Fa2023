SELECT tc.* FROM title_basics AS tb JOIN
( SELECT * from
(select DISTINCT ON(titleType) titleId, primaryTitle as titleName,averageRating,numVotes from title_ratings where primaryTitle like '%' ||? || '%') as ratingTable WHERE titleType ='movie' AND primaryTitle LIKE CONCAT('%','?','%')) AS ratings
WHERE titles.genre in ('Action','Adventure','Comedy','Drama','Fantasy','Horror','Sci-Fi','Western')AND (startyear >= 1800 OR startyear IS NULL ) AND (endYEAR <= CURRENT YEAR - 3 OR endYEAR IS NULL)