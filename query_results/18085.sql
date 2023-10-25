SELECT * FROM
( SELECT tb.*, nr.* FROM title_basic AS tb JOIN rating_basic NR ON tb.titleId = NR.titleId ) WHERE tb.titleType!= "TV" AND tb.isAdult == false ORDER BY tb.startYear DESC LIMIT 3