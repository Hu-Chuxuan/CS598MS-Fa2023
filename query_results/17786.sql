SELECT t.titleID AS ID, m.titleID AS MovieID,
m.titleType as TitleType, m.primaryTitle as PrimaryTitle, m.originalTitle as OriginalTitle,
m.isAdult as IsAdult, m.startYear as StartYear, m.endYear as EndYear, m.runtimeMinutes as RuntimeMinutes,
m.genreList as Genres, r.averageRatings as AverageRating, r.numVoters as NumVoter, c.categoryList as CategoryList
FROM title_rating r INNER JOIN title_basic t ON r.titleId = t.titleID AND r.titleType=t.titleType
INNER JOIN name_basic n ON r.movieID = n.titleID
INNER JOIN title_crew tc ON t.titleID = tc.titleID WHERE ((r.averageRating >= 8 OR r.averageRating <= 9))
AND (r.avgRATING >= 8 OR r.avgRATING <= 9)