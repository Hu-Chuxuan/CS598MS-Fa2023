SELECT * FROM
( SELECT title_ratings.*, title_basics.*
    WHERE title_basics.title_type ='movie' AND userInput LIKE '%The Transporter%' OR userPreferneceHistory LIKE '%The Transporter%' ) AS ratings
INNER JOIN ( SELECT title_basics.*, cast_members.*, crew_members.*
            INNER JOIN name_basics ON name_basics.name_id=cast_members.characterID
                               INNER JOIN name_basics ON name_basics.name_id=crew_members.jobId
                INNER JOIN titles_crews ON titles_crews.film_id=titles_basics.title_id
                              LEFT OUTER JOIN genre_films USING (genre_id)) as castAndCrews
ON ratings.movie_id = castAndCrews.title_id