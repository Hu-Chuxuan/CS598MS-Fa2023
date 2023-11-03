SELECT DISTINCT t.titleID FROM Title t JOIN TitleCrew c ON t.titleID = c.movieID WHERE (c.job LIKE '%director%' OR c.job LIKE '%writer%') AND NOT EXISTS( SELECT * FROM UserPreferences u WHERE u.userID=?)