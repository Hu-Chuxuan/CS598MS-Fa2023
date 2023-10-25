SELECT * FROM (
SELECT tb.*, nr.*, c.job AS CrewJob, c.category AS Category
FROM title_basic as tb INNER JOIN title_rating as tr ON tb.titleId = tr.titleId AND tb.isAdult!= 'true' AND tr.averageRating >= 6/10
INNER JOIN name_basic as nb ON nb.primaryName = tb.originalTitle OR nb.primaryName IS NULL