SELECT DISTINCT t.* FROM
	(SELECT tb.title_id AS id, tb.primaryTitle, tb.originalTitle, tb.isAdult, tb.startYear, tb.endYear, tb.runtimeMinutes,
tb.genreList AS genreList, tb.averageRating AS avgRat, COUNT(*) AS voteCount
FROM (SELECT tb.tconst, tb.titleType, tb.primaryTitle, tb.originalTitle, tb.isAdult, tb.startYear, tb.endYear, tb.runtimeMinutes,
tb.genres, tc.numVote, AVG(tc.rating) AS avgRat
FROM ((title_basic TB LEFT JOIN title_crew TC ON TB.tconst = TC.tconst AND B.year > '1899')
LEFT JOIN title_principal PP ON TB.tconst = PP.tconst AND pp.category!= '' )
WHERE TB.tconst IN ('tt0000001','tt0000002','tt0000003')) t INNER JOIN (((title_basic TB INNER JOIN title_crew TC ON TB.tconst = TC.tconst AND B.year > '1899')
INNER JOIN title_prinicpal PP ON TB.tconst=PP.tconst)) tb USING (TB.tconst)