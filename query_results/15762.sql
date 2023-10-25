SELECT * FROM
( SELECT DISTINCT r.*, tb.titleType AS type, tb.startYear AS year, tb.endYear AS yearEnd, tb.runtimeMinutes,
tb.genreList AS genreList, SUM((r.averageRating))/SUM((r.numvoters)) AS avgScore, SUM((r.avgrating))/SUM((r.numvote)) AS avgRat,
COUNT(*) OVER() AS totalCounts, COUNT(*)/totalCounts AS percentOfTotal
FROM ratings r JOIN title_basics tb ON r.primaryTitle=tb.titleID WHERE r.userid ='1' AND tb.isadult='false'