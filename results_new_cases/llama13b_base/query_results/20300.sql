SELECT title_basics.title, title_basics.primaryTitle, title_ratings.averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
WHERE title_basics.genres = 'Superhero'
AND title_ratings.numVotes > 1000
AND title_basics.startYear > 2000
AND title_basics.endYear < 2020
AND name_basics.knownForTitles = ANY('Guardians of the Galaxy', 'Guardians of the Galaxy Vol. 2', 'Spider-Man')
ORDER BY title_ratings.averageRating DESC