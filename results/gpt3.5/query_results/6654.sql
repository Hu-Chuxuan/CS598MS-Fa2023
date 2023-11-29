SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.genres LIKE '%Sci-Fi%'
AND title_ratings.numVotes > 1000
AND title_basics.startYear > 2000
AND title_basics.startYear < 2010
AND title_basics.primaryTitle NOT IN ('Rogue One: A Star Wars Story (2016)', 'Star Wars: Episode VIII – The Last Jedi (2017)', 'Star Wars: Episode III – Revenge of the Sith (2005)', 'Star Wars: The Clone Wars  (2008)')
ORDER BY averageRating DESC
LIMIT 5