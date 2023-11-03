SELECT * FROM (title_recommendation JOIN title_ratings WHERE title_recommendation.primaryTitle LIKE '%sci%' AND ((userInput LIKE %'%sci%' OR userInput ='sci') AND title_ratings.numVotes >= 0) AND title_rating.averageRating <= 9.5) JOIN (title_principals JOIN actors ON actor.characters LIKE 'Sci Fi' AND title_principals.job LIKE 'Actor/Actress')) JOIN (name_basic JOIN titles ON titles.originalTitle LIKE 'Sci-Fi' AND name_base.birthyear BETWEEN 1876 AND 1950)) JOIN (director_titles JOIN titles ON director_titles.movies LIKE 'Science fiction' AND titles.startYear > 1960) JOIN (writer_titles JOIN titles ON writer_titles.movies LIKE 'Science fiction' AND titles.startYear > 1960)