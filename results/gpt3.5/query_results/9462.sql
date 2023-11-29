SELECT primaryTitle, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear = 2017
AND titleType = 'movie'
AND primaryTitle = 'Mother!'
AND averageRating > 6
AND numVotes > 1000
AND (genres LIKE '%Drama%' OR genres LIKE '%Mystery%')
AND title_basics.tconst NOT IN (
    SELECT tconst 
    FROM title_basics
    WHERE primaryTitle = 'Ghost in the Shell'
) 
AND title_basics.tconst NOT IN (
    SELECT unnest(knownForTitles) 
    FROM name_basics
    WHERE primaryName = 'The Girl with the Dragon Tattoo'
    OR primaryName = 'The Talented Mr. Ripley'
)
