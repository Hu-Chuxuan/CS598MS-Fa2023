SELECT * FROM (
	SELECT DISTINCT tconst AS MovieID, titleType AS TypeOfMovie, averageRating As RATINGS, numVOTES AS VOTECOUNT, CONCAT('https://www.imdb.com/title/', tconst,'/videos') AS IMDBLink
FROM imdb.title_ratings WHERE tconst IN ('tt0000001','tt0000002')