SELECT * FROM (
	(
		SELECT DISTINCT TITLE_BASICS.*, AVERAGE_RATING AS avg_rating
	FROM IMDB.title_basic, IMDB.title_ratings WHERE imdb.title_basic.titleID = imdb.title_ratings.titleID AND title_ratings.numVotes > 0 GROUP BY title_basic.movieID)
UNION ALL
	SELECT DISTINCT TITLE_PRINCIPALS.*, CHARACTERS
	FROM IMDB.title_principal INNER JOIN IMDB.name_basics ON (IMDB.title_principal.primaryCharacter = IMDB.name_basics.characterID), IMDB.characters