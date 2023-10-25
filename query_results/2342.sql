SELECT DISTINCT TITLE_CREW.DIRECTORS AS DIRECTOR FROM IMDB.TITLES as t JOIN IMDB.TITLE_CREW ON t.IMDBID = TITLE_CREW.IMDBID WHERE ((((t.ISADULT = 'false' AND t.STARTYEAR >= 1990)) OR ((t.ISADULT = 'true')))