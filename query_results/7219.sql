SELECT * FROM title_basics tb WHERE tb.titleType = "Sci-fi" AND NOT EXISTS( SELECT 1 from title_recommendation tr WHERE tr.userInput ='sci-fi' ) ORDER BY tb.startYear DESC