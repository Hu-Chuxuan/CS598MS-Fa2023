SELECT DISTINCT title_basic.* FROM title_basic WHERE title_basic.titleType ='movie' AND title_basic.startYear BETWEEN 1970 AND NOW() AND title_basic.isAdult <> 'true'