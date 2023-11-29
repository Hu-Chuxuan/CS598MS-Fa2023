SELECT * FROM title WHERE titleType ='movie' AND
startYear <= '2019' OR
endYear >= '1970' ORDER BY averageRating DESC LIMIT 5 OFFSET 1