SELECT * FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE title_ratings.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle LIKE '%mermaid%'))
AND title_ratings.averageRating < (SELECT AVG(averageRating) FROM title_ratings WHERE tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle LIKE '%boys%'))
AND name_basics.primaryProfession LIKE '%actor%'
AND name_basics.knownForTitles LIKE '%Waterboys%', '%Little Mermaid%'
ORDER BY title_ratings.averageRating DESC