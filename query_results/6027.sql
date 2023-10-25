SELECT t.titleId as id,
t.titleType AS type,
t.primaryTitle AS pname,
t.originalTitle AS otitle,
t.isAdult AS adult,
t.startYear AS year,
t.endYear AS eyear,
t.runtimeMinutes AS rtime,
genreList(t.genres) AS genre,
ratingSum(t.averageRatings),
numReviews(t.numVoteCounts) AS reviewers
FROM titles AS t INNER JOIN ratingSummary AS rs ON rs.titleId = t.id