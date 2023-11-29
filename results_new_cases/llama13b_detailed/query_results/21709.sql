SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_ratings.nconst = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear <= '2022' AND endYear >= '2022'
AND (
    (directors = 'nm0005690' OR directors = 'nm0374658') 
    AND (
        (writers = 'nm0085156' OR writers = 'nm1588970') 
        AND (
            (characters = '["Assistant"]' OR characters = '["Blacksmith"]') 
            OR (
                (characters = '["Hero"]' OR characters = '["Villain"]') 
                AND (
                    (genres LIKE '%Action%' OR genres LIKE '%Adventure%') 
                    AND (
                        (runtimeMinutes > 120 OR runtimeMinutes < 60) 
                        AND (
                            (startYear = '2022' OR startYear = '2021') 
                            AND (endYear = '2022' OR endYear = '2021')
                        )
                    )
                )
            )
        )
    )
)
GROUP BY tconst
HAVING avg(rating) > avg(rating) GROUP BY tconst
ORDER BY avg(rating) DESC